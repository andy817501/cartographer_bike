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

class VESC_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Motor_duty = null;
      this.Motor_rpm = null;
    }
    else {
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VESC_srvRequest
    // Serialize message field [Motor_duty]
    bufferOffset = _serializer.float32(obj.Motor_duty, buffer, bufferOffset);
    // Serialize message field [Motor_rpm]
    bufferOffset = _serializer.int16(obj.Motor_rpm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VESC_srvRequest
    let len;
    let data = new VESC_srvRequest(null);
    // Deserialize message field [Motor_duty]
    data.Motor_duty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_rpm]
    data.Motor_rpm = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'can_communication/VESC_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93fd0cd6b16901ae98e434712f08384d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Motor_duty
    int16 Motor_rpm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VESC_srvRequest(null);
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

    return resolved;
    }
};

class VESC_srvResponse {
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
    // Serializes a message object of type VESC_srvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VESC_srvResponse
    let len;
    let data = new VESC_srvResponse(null);
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
    return 'can_communication/VESC_srvResponse';
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
    const resolved = new VESC_srvResponse(null);
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
  Request: VESC_srvRequest,
  Response: VESC_srvResponse,
  md5sum() { return '97cac9bdb9cfc7ba3044e440153b1b6d'; },
  datatype() { return 'can_communication/VESC_srv'; }
};
