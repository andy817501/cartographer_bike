// Auto-generated. Do not edit!

// (in-package fdilink_ahrs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class original_imu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gyroscope_x = null;
      this.gyroscope_y = null;
      this.gyroscope_z = null;
      this.accelerometer_x = null;
      this.accelerometer_y = null;
      this.accelerometer_z = null;
    }
    else {
      if (initObj.hasOwnProperty('gyroscope_x')) {
        this.gyroscope_x = initObj.gyroscope_x
      }
      else {
        this.gyroscope_x = 0.0;
      }
      if (initObj.hasOwnProperty('gyroscope_y')) {
        this.gyroscope_y = initObj.gyroscope_y
      }
      else {
        this.gyroscope_y = 0.0;
      }
      if (initObj.hasOwnProperty('gyroscope_z')) {
        this.gyroscope_z = initObj.gyroscope_z
      }
      else {
        this.gyroscope_z = 0.0;
      }
      if (initObj.hasOwnProperty('accelerometer_x')) {
        this.accelerometer_x = initObj.accelerometer_x
      }
      else {
        this.accelerometer_x = 0.0;
      }
      if (initObj.hasOwnProperty('accelerometer_y')) {
        this.accelerometer_y = initObj.accelerometer_y
      }
      else {
        this.accelerometer_y = 0.0;
      }
      if (initObj.hasOwnProperty('accelerometer_z')) {
        this.accelerometer_z = initObj.accelerometer_z
      }
      else {
        this.accelerometer_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type original_imu
    // Serialize message field [gyroscope_x]
    bufferOffset = _serializer.float32(obj.gyroscope_x, buffer, bufferOffset);
    // Serialize message field [gyroscope_y]
    bufferOffset = _serializer.float32(obj.gyroscope_y, buffer, bufferOffset);
    // Serialize message field [gyroscope_z]
    bufferOffset = _serializer.float32(obj.gyroscope_z, buffer, bufferOffset);
    // Serialize message field [accelerometer_x]
    bufferOffset = _serializer.float32(obj.accelerometer_x, buffer, bufferOffset);
    // Serialize message field [accelerometer_y]
    bufferOffset = _serializer.float32(obj.accelerometer_y, buffer, bufferOffset);
    // Serialize message field [accelerometer_z]
    bufferOffset = _serializer.float32(obj.accelerometer_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type original_imu
    let len;
    let data = new original_imu(null);
    // Deserialize message field [gyroscope_x]
    data.gyroscope_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyroscope_y]
    data.gyroscope_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyroscope_z]
    data.gyroscope_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accelerometer_x]
    data.accelerometer_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accelerometer_y]
    data.accelerometer_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accelerometer_z]
    data.accelerometer_z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fdilink_ahrs/original_imu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31a1f3dfbaee0ca05acbe4ee8ad9dfc7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 gyroscope_x
    float32 gyroscope_y
    float32 gyroscope_z
    float32 accelerometer_x
    float32 accelerometer_y
    float32 accelerometer_z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new original_imu(null);
    if (msg.gyroscope_x !== undefined) {
      resolved.gyroscope_x = msg.gyroscope_x;
    }
    else {
      resolved.gyroscope_x = 0.0
    }

    if (msg.gyroscope_y !== undefined) {
      resolved.gyroscope_y = msg.gyroscope_y;
    }
    else {
      resolved.gyroscope_y = 0.0
    }

    if (msg.gyroscope_z !== undefined) {
      resolved.gyroscope_z = msg.gyroscope_z;
    }
    else {
      resolved.gyroscope_z = 0.0
    }

    if (msg.accelerometer_x !== undefined) {
      resolved.accelerometer_x = msg.accelerometer_x;
    }
    else {
      resolved.accelerometer_x = 0.0
    }

    if (msg.accelerometer_y !== undefined) {
      resolved.accelerometer_y = msg.accelerometer_y;
    }
    else {
      resolved.accelerometer_y = 0.0
    }

    if (msg.accelerometer_z !== undefined) {
      resolved.accelerometer_z = msg.accelerometer_z;
    }
    else {
      resolved.accelerometer_z = 0.0
    }

    return resolved;
    }
};

module.exports = original_imu;
