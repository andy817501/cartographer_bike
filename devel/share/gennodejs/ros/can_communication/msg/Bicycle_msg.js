// Auto-generated. Do not edit!

// (in-package can_communication.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Bicycle_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Servo_Direction = null;
      this.Bicycle_voltage = null;
      this.Motor_Roll = null;
      this.Motor_Roll_Gyro = null;
      this.Motor_duty = null;
      this.Motor_rpm = null;
      this.Device_ID = null;
    }
    else {
      if (initObj.hasOwnProperty('Servo_Direction')) {
        this.Servo_Direction = initObj.Servo_Direction
      }
      else {
        this.Servo_Direction = 0.0;
      }
      if (initObj.hasOwnProperty('Bicycle_voltage')) {
        this.Bicycle_voltage = initObj.Bicycle_voltage
      }
      else {
        this.Bicycle_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('Motor_Roll')) {
        this.Motor_Roll = initObj.Motor_Roll
      }
      else {
        this.Motor_Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Motor_Roll_Gyro')) {
        this.Motor_Roll_Gyro = initObj.Motor_Roll_Gyro
      }
      else {
        this.Motor_Roll_Gyro = 0.0;
      }
      if (initObj.hasOwnProperty('Motor_duty')) {
        this.Motor_duty = initObj.Motor_duty
      }
      else {
        this.Motor_duty = 0.0;
      }
      if (initObj.hasOwnProperty('Motor_rpm')) {
        this.Motor_rpm = initObj.Motor_rpm
      }
      else {
        this.Motor_rpm = 0;
      }
      if (initObj.hasOwnProperty('Device_ID')) {
        this.Device_ID = initObj.Device_ID
      }
      else {
        this.Device_ID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bicycle_msg
    // Serialize message field [Servo_Direction]
    bufferOffset = _serializer.float32(obj.Servo_Direction, buffer, bufferOffset);
    // Serialize message field [Bicycle_voltage]
    bufferOffset = _serializer.float32(obj.Bicycle_voltage, buffer, bufferOffset);
    // Serialize message field [Motor_Roll]
    bufferOffset = _serializer.float32(obj.Motor_Roll, buffer, bufferOffset);
    // Serialize message field [Motor_Roll_Gyro]
    bufferOffset = _serializer.float32(obj.Motor_Roll_Gyro, buffer, bufferOffset);
    // Serialize message field [Motor_duty]
    bufferOffset = _serializer.float32(obj.Motor_duty, buffer, bufferOffset);
    // Serialize message field [Motor_rpm]
    bufferOffset = _serializer.int32(obj.Motor_rpm, buffer, bufferOffset);
    // Serialize message field [Device_ID]
    bufferOffset = _serializer.int16(obj.Device_ID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bicycle_msg
    let len;
    let data = new Bicycle_msg(null);
    // Deserialize message field [Servo_Direction]
    data.Servo_Direction = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Bicycle_voltage]
    data.Bicycle_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_Roll]
    data.Motor_Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_Roll_Gyro]
    data.Motor_Roll_Gyro = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_duty]
    data.Motor_duty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_rpm]
    data.Motor_rpm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Device_ID]
    data.Device_ID = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_communication/Bicycle_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bec6b5b94fc5c7677fbd09497b317d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Servo_Direction
    float32 Bicycle_voltage
    float32 Motor_Roll
    float32 Motor_Roll_Gyro
    float32 Motor_duty
    int32   Motor_rpm
    int16   Device_ID
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Bicycle_msg(null);
    if (msg.Servo_Direction !== undefined) {
      resolved.Servo_Direction = msg.Servo_Direction;
    }
    else {
      resolved.Servo_Direction = 0.0
    }

    if (msg.Bicycle_voltage !== undefined) {
      resolved.Bicycle_voltage = msg.Bicycle_voltage;
    }
    else {
      resolved.Bicycle_voltage = 0.0
    }

    if (msg.Motor_Roll !== undefined) {
      resolved.Motor_Roll = msg.Motor_Roll;
    }
    else {
      resolved.Motor_Roll = 0.0
    }

    if (msg.Motor_Roll_Gyro !== undefined) {
      resolved.Motor_Roll_Gyro = msg.Motor_Roll_Gyro;
    }
    else {
      resolved.Motor_Roll_Gyro = 0.0
    }

    if (msg.Motor_duty !== undefined) {
      resolved.Motor_duty = msg.Motor_duty;
    }
    else {
      resolved.Motor_duty = 0.0
    }

    if (msg.Motor_rpm !== undefined) {
      resolved.Motor_rpm = msg.Motor_rpm;
    }
    else {
      resolved.Motor_rpm = 0
    }

    if (msg.Device_ID !== undefined) {
      resolved.Device_ID = msg.Device_ID;
    }
    else {
      resolved.Device_ID = 0
    }

    return resolved;
    }
};

module.exports = Bicycle_msg;
