// Auto-generated. Do not edit!

// (in-package can_communication.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Odrive_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Command = null;
      this.Motor_pos = null;
      this.Motor_vel = null;
      this.Motor_tor = null;
    }
    else {
      if (initObj.hasOwnProperty('Command')) {
        this.Command = initObj.Command
      }
      else {
        this.Command = 0;
      }
      if (initObj.hasOwnProperty('Motor_pos')) {
        this.Motor_pos = initObj.Motor_pos
      }
      else {
        this.Motor_pos = 0.0;
      }
      if (initObj.hasOwnProperty('Motor_vel')) {
        this.Motor_vel = initObj.Motor_vel
      }
      else {
        this.Motor_vel = 0.0;
      }
      if (initObj.hasOwnProperty('Motor_tor')) {
        this.Motor_tor = initObj.Motor_tor
      }
      else {
        this.Motor_tor = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Odrive_srvRequest
    // Serialize message field [Command]
    bufferOffset = _serializer.int16(obj.Command, buffer, bufferOffset);
    // Serialize message field [Motor_pos]
    bufferOffset = _serializer.float32(obj.Motor_pos, buffer, bufferOffset);
    // Serialize message field [Motor_vel]
    bufferOffset = _serializer.float32(obj.Motor_vel, buffer, bufferOffset);
    // Serialize message field [Motor_tor]
    bufferOffset = _serializer.float32(obj.Motor_tor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Odrive_srvRequest
    let len;
    let data = new Odrive_srvRequest(null);
    // Deserialize message field [Command]
    data.Command = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Motor_pos]
    data.Motor_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_vel]
    data.Motor_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_tor]
    data.Motor_tor = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'can_communication/Odrive_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98395cca35dadc8c3b5dfe0ec65058cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16   Command
    float32 Motor_pos
    float32 Motor_vel
    float32 Motor_tor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Odrive_srvRequest(null);
    if (msg.Command !== undefined) {
      resolved.Command = msg.Command;
    }
    else {
      resolved.Command = 0
    }

    if (msg.Motor_pos !== undefined) {
      resolved.Motor_pos = msg.Motor_pos;
    }
    else {
      resolved.Motor_pos = 0.0
    }

    if (msg.Motor_vel !== undefined) {
      resolved.Motor_vel = msg.Motor_vel;
    }
    else {
      resolved.Motor_vel = 0.0
    }

    if (msg.Motor_tor !== undefined) {
      resolved.Motor_tor = msg.Motor_tor;
    }
    else {
      resolved.Motor_tor = 0.0
    }

    return resolved;
    }
};

class Odrive_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Odrive_srvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Odrive_srvResponse
    let len;
    let data = new Odrive_srvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'can_communication/Odrive_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   # indicate successful run of triggered service
    string message # informational, e.g. for error messages
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Odrive_srvResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: Odrive_srvRequest,
  Response: Odrive_srvResponse,
  md5sum() { return 'e522f0b6d497b2dedc7ffe665b11fc10'; },
  datatype() { return 'can_communication/Odrive_srv'; }
};
