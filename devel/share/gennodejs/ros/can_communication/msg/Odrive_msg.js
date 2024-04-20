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

class Odrive_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Device_ID = null;
      this.Command = null;
      this.Motor_rpm = null;
      this.Motor_pos = null;
      this.Motor_torque = null;
      this.Motor_voltage = null;
      this.Motor_current = null;
    }
    else {
      if (initObj.hasOwnProperty('Device_ID')) {
        this.Device_ID = initObj.Device_ID
      }
      else {
        this.Device_ID = 0;
      }
      if (initObj.hasOwnProperty('Command')) {
        this.Command = initObj.Command
      }
      else {
        this.Command = 0;
      }
      if (initObj.hasOwnProperty('Motor_rpm')) {
        this.Motor_rpm = initObj.Motor_rpm
      }
      else {
        this.Motor_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('Motor_pos')) {
        this.Motor_pos = initObj.Motor_pos
      }
      else {
        this.Motor_pos = 0.0;
      }
      if (initObj.hasOwnProperty('Motor_torque')) {
        this.Motor_torque = initObj.Motor_torque
      }
      else {
        this.Motor_torque = 0.0;
      }
      if (initObj.hasOwnProperty('Motor_voltage')) {
        this.Motor_voltage = initObj.Motor_voltage
      }
      else {
        this.Motor_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('Motor_current')) {
        this.Motor_current = initObj.Motor_current
      }
      else {
        this.Motor_current = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Odrive_msg
    // Serialize message field [Device_ID]
    bufferOffset = _serializer.int16(obj.Device_ID, buffer, bufferOffset);
    // Serialize message field [Command]
    bufferOffset = _serializer.int16(obj.Command, buffer, bufferOffset);
    // Serialize message field [Motor_rpm]
    bufferOffset = _serializer.float32(obj.Motor_rpm, buffer, bufferOffset);
    // Serialize message field [Motor_pos]
    bufferOffset = _serializer.float32(obj.Motor_pos, buffer, bufferOffset);
    // Serialize message field [Motor_torque]
    bufferOffset = _serializer.float32(obj.Motor_torque, buffer, bufferOffset);
    // Serialize message field [Motor_voltage]
    bufferOffset = _serializer.float32(obj.Motor_voltage, buffer, bufferOffset);
    // Serialize message field [Motor_current]
    bufferOffset = _serializer.float32(obj.Motor_current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Odrive_msg
    let len;
    let data = new Odrive_msg(null);
    // Deserialize message field [Device_ID]
    data.Device_ID = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Command]
    data.Command = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Motor_rpm]
    data.Motor_rpm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_pos]
    data.Motor_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_torque]
    data.Motor_torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_voltage]
    data.Motor_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_current]
    data.Motor_current = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_communication/Odrive_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42d24095fdb231486a76000750ac32b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16     Device_ID
    int16     Command
    float32   Motor_rpm
    float32   Motor_pos
    float32   Motor_torque
    float32   Motor_voltage
    float32   Motor_current
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Odrive_msg(null);
    if (msg.Device_ID !== undefined) {
      resolved.Device_ID = msg.Device_ID;
    }
    else {
      resolved.Device_ID = 0
    }

    if (msg.Command !== undefined) {
      resolved.Command = msg.Command;
    }
    else {
      resolved.Command = 0
    }

    if (msg.Motor_rpm !== undefined) {
      resolved.Motor_rpm = msg.Motor_rpm;
    }
    else {
      resolved.Motor_rpm = 0.0
    }

    if (msg.Motor_pos !== undefined) {
      resolved.Motor_pos = msg.Motor_pos;
    }
    else {
      resolved.Motor_pos = 0.0
    }

    if (msg.Motor_torque !== undefined) {
      resolved.Motor_torque = msg.Motor_torque;
    }
    else {
      resolved.Motor_torque = 0.0
    }

    if (msg.Motor_voltage !== undefined) {
      resolved.Motor_voltage = msg.Motor_voltage;
    }
    else {
      resolved.Motor_voltage = 0.0
    }

    if (msg.Motor_current !== undefined) {
      resolved.Motor_current = msg.Motor_current;
    }
    else {
      resolved.Motor_current = 0.0
    }

    return resolved;
    }
};

module.exports = Odrive_msg;
