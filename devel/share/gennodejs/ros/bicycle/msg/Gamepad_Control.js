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

class Gamepad_Control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LeftHatX = null;
      this.LeftHatY = null;
    }
    else {
      if (initObj.hasOwnProperty('LeftHatX')) {
        this.LeftHatX = initObj.LeftHatX
      }
      else {
        this.LeftHatX = 0;
      }
      if (initObj.hasOwnProperty('LeftHatY')) {
        this.LeftHatY = initObj.LeftHatY
      }
      else {
        this.LeftHatY = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gamepad_Control
    // Serialize message field [LeftHatX]
    bufferOffset = _serializer.int32(obj.LeftHatX, buffer, bufferOffset);
    // Serialize message field [LeftHatY]
    bufferOffset = _serializer.int32(obj.LeftHatY, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gamepad_Control
    let len;
    let data = new Gamepad_Control(null);
    // Deserialize message field [LeftHatX]
    data.LeftHatX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [LeftHatY]
    data.LeftHatY = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bicycle/Gamepad_Control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10cad8b4f3fb64b90750ff920467060e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 LeftHatX
    int32 LeftHatY
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gamepad_Control(null);
    if (msg.LeftHatX !== undefined) {
      resolved.LeftHatX = msg.LeftHatX;
    }
    else {
      resolved.LeftHatX = 0
    }

    if (msg.LeftHatY !== undefined) {
      resolved.LeftHatY = msg.LeftHatY;
    }
    else {
      resolved.LeftHatY = 0
    }

    return resolved;
    }
};

module.exports = Gamepad_Control;
