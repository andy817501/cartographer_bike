// Auto-generated. Do not edit!

// (in-package bicycle.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Bicycle_Roll {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Roll = null;
      this.Roll_Velocitys = null;
      this.Set_Torque = null;
    }
    else {
      if (initObj.hasOwnProperty('Roll')) {
        this.Roll = initObj.Roll
      }
      else {
        this.Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Roll_Velocitys')) {
        this.Roll_Velocitys = initObj.Roll_Velocitys
      }
      else {
        this.Roll_Velocitys = 0.0;
      }
      if (initObj.hasOwnProperty('Set_Torque')) {
        this.Set_Torque = initObj.Set_Torque
      }
      else {
        this.Set_Torque = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bicycle_Roll
    // Serialize message field [Roll]
    bufferOffset = _serializer.float32(obj.Roll, buffer, bufferOffset);
    // Serialize message field [Roll_Velocitys]
    bufferOffset = _serializer.float32(obj.Roll_Velocitys, buffer, bufferOffset);
    // Serialize message field [Set_Torque]
    bufferOffset = _serializer.float32(obj.Set_Torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bicycle_Roll
    let len;
    let data = new Bicycle_Roll(null);
    // Deserialize message field [Roll]
    data.Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Roll_Velocitys]
    data.Roll_Velocitys = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Set_Torque]
    data.Set_Torque = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bicycle/Bicycle_Roll';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7447a4ccbe634941a8adc55e6847e8a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Roll
    float32 Roll_Velocitys
    float32 Set_Torque
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Bicycle_Roll(null);
    if (msg.Roll !== undefined) {
      resolved.Roll = msg.Roll;
    }
    else {
      resolved.Roll = 0.0
    }

    if (msg.Roll_Velocitys !== undefined) {
      resolved.Roll_Velocitys = msg.Roll_Velocitys;
    }
    else {
      resolved.Roll_Velocitys = 0.0
    }

    if (msg.Set_Torque !== undefined) {
      resolved.Set_Torque = msg.Set_Torque;
    }
    else {
      resolved.Set_Torque = 0.0
    }

    return resolved;
    }
};

module.exports = Bicycle_Roll;
