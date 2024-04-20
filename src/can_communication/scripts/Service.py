#!/usr/bin/env python

from __future__ import print_function

from can_communication.srv import *
from can_communication.msg import *
import rospy
import can
import time
import atexit

from Odrive import *
from CAN_Servo import *
from VESC_Motor import *

CAN_ID = 0x0E

servo = None
motor_1 = None
motor_2 = None
bus = None

def on_exit():
    notifier.stop()
    bus.shutdown()

def timer_callback(event):
    rospy.logdebug("get_data")
    odrive_motor.Get_Pos_Vel()
    odrive_motor.Get_Bus_Cur()
    

def Process_Message(msg):
    # rospy.logdebug("Received message:", msg.data)
    # 12 bits ADC -> Angle
    # if (msg.arbitration_id == 0x0E):
    #    servo.Process_Message(msg)
    # if  ((msg.arbitration_id & 0xFF) == motor_1.ID):
    #     motor_1.Process_Message(msg)
    # elif  ((msg.arbitration_id & 0xFF) == motor_2.ID):
    #     motor_2.Process_Message(msg)
    if((msg.arbitration_id >> 5 & 0xFF) == Odrive_Node_ID):
        odrive_motor.Process_Message(msg)
    else:
        print("error")
    if((msg.arbitration_id >> 5 & 0xFF) == Odrive_Node_ID_2):
        odrive_motor.Process_Message(msg)
    else:
        print("error")

def handle_can_servo(req):
    result = servo.RotationAngle(req.Servo_Direction)
    # print("Angle={}".format(result))
    response = CAN_srvResponse()
    response.success = True
    response.message = "OK"
    return response

def handle_motor_1(req):
    result = motor_1.SetRPM(req.Motor_rpm)
    # print("RPM={}".format(result))
    response = VESC_srvResponse()
    response.success = True
    response.message = "OK"
    return response

def handle_motor_2(req):
    result = motor_2.SetDuty(req.Motor_duty)
    # print("Duty={}".format(result))
    response = VESC_srvResponse()
    response.success = True
    response.message = "OK"
    return response

def handle_odrive_motor(req):
    if(req.Command == Axis0_Set_Input_Vel):
        odrive_motor.Set_RPM(req.Motor_vel)
    elif(req.Command == Axis0_Set_Input_Torque):
        odrive_motor.Set_Torque(req.Motor_tor)
    response = Odrive_srvResponse()
    response.success = True
    response.message = "OK"
    rospy.logdebug("send_Torque")
    return response

rospy.init_node('can_server')

# can_servo_pub = rospy.Publisher('Bicycle/CAN_Servo_info', Bicycle_msg, queue_size=100)
# motor_1_pub = rospy.Publisher('Bicycle/VESC_Motor_1_info', Bicycle_msg, queue_size=1000)
# motor_2_pub = rospy.Publisher('Bicycle/VESC_Motor_2_info', Bicycle_msg, queue_size=100)
odrive_motor_pub = rospy.Publisher('Bicycle/Odrive_Motor_info', Odrive_msg, queue_size=100)
odrive_motor_qudong_pub = rospy.Publisher('Bicycle/Odrive_Motor_qudong_info', Odrive_msg, queue_size=100)

logger = can.CSVWriter("/home/prowinter/Desktop/Bicycle_ws/log/log.csv") 

filters = [
    {"can_id": 0x0E, "can_mask": 0x7FF, "extended": False},     # CAN-Servo
    {"can_id": VESC_ID_1 | CAN_PACKET_STATUS_1 << 8, "can_mask": 0x1FFFFFFF, "extended": True},     # VESC-STATUS_1
    {"can_id": VESC_ID_2 | CAN_PACKET_STATUS_1 << 8, "can_mask": 0x1FFFFFFF, "extended": True},     # VESC-STATUS_1
    {"can_id": VESC_ID_1 | CAN_PACKET_STATUS_5 << 8, "can_mask": 0x1FFFFFFF, "extended": True},     # VESC-STATUS_5
    {"can_id": Odrive_Node_ID << 5 | Axis0_Get_Encoder_Estimates, "can_mask": 0x7FF, "extended": False}, 
    {"can_id": Odrive_Node_ID << 5 | Axis0_Get_Bus_Voltage_Current, "can_mask": 0x7FF, "extended": False}, 
    {"can_id": Odrive_Node_ID_2 << 5 | Axis0_Get_Encoder_Estimates, "can_mask": 0x7FF, "extended": False}, 
    {"can_id": Odrive_Node_ID_2 << 5 | Axis0_Get_Bus_Voltage_Current, "can_mask": 0x7FF, "extended": False},     
]

bus = can.interface.Bus(bustype='slcan', channel='/dev/usb_canable', bitrate=1000000, can_filters=filters)

# servo = CAN_Servo(CAN_ID,bus,can_servo_pub)
# motor_1 = VESC_Motor(VESC_ID_1,bus,motor_1_pub)
# motor_2 = VESC_Motor(VESC_ID_2,bus,motor_2_pub)
odrive_motor = Odrive_Motor(Odrive_Node_ID,bus,odrive_motor_pub)
odrive_motor_qudong = Odrive_Motor(Odrive_Node_ID_2,bus,odrive_motor_qudong_pub)
listeners = [
    Process_Message,    # Callback function, print the received messages
    logger,             # save received messages to log file
]

notifier = can.Notifier(bus, listeners)
atexit.register(on_exit)

# a = rospy.Service('CAN_Servo', CAN_srv, handle_can_servo)
# b = rospy.Service('VESC_Motor_1', VESC_srv, handle_motor_1)
# c = rospy.Service('VESC_Motor_2', VESC_srv, handle_motor_2)
d = rospy.Service('Odrive_Motor', Odrive_srv, handle_odrive_motor)
a = rospy.Service('Odrive_Motor_qudong', Odrive_srv, handle_odrive_motor)
timer = rospy.Timer(rospy.Duration(1.0/200.0), timer_callback)
rospy.spin()