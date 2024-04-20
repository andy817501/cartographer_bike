// Auto-generated. Do not edit!

// (in-package ros_odrive.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class odrive_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target = null;
      this.vbus = null;
      this.error0 = null;
      this.state0 = null;
      this.vel0 = null;
      this.pos0 = null;
      this.curr0B = null;
      this.curr0C = null;
      this.temp0 = null;
    }
    else {
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = 0;
      }
      if (initObj.hasOwnProperty('vbus')) {
        this.vbus = initObj.vbus
      }
      else {
        this.vbus = 0.0;
      }
      if (initObj.hasOwnProperty('error0')) {
        this.error0 = initObj.error0
      }
      else {
        this.error0 = 0;
      }
      if (initObj.hasOwnProperty('state0')) {
        this.state0 = initObj.state0
      }
      else {
        this.state0 = 0;
      }
      if (initObj.hasOwnProperty('vel0')) {
        this.vel0 = initObj.vel0
      }
      else {
        this.vel0 = 0.0;
      }
      if (initObj.hasOwnProperty('pos0')) {
        this.pos0 = initObj.pos0
      }
      else {
        this.pos0 = 0.0;
      }
      if (initObj.hasOwnProperty('curr0B')) {
        this.curr0B = initObj.curr0B
      }
      else {
        this.curr0B = 0.0;
      }
      if (initObj.hasOwnProperty('curr0C')) {
        this.curr0C = initObj.curr0C
      }
      else {
        this.curr0C = 0.0;
      }
      if (initObj.hasOwnProperty('temp0')) {
        this.temp0 = initObj.temp0
      }
      else {
        this.temp0 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type odrive_msg
    // Serialize message field [target]
    bufferOffset = _serializer.uint8(obj.target, buffer, bufferOffset);
    // Serialize message field [vbus]
    bufferOffset = _serializer.float32(obj.vbus, buffer, bufferOffset);
    // Serialize message field [error0]
    bufferOffset = _serializer.int32(obj.error0, buffer, bufferOffset);
    // Serialize message field [state0]
    bufferOffset = _serializer.int32(obj.state0, buffer, bufferOffset);
    // Serialize message field [vel0]
    bufferOffset = _serializer.float32(obj.vel0, buffer, bufferOffset);
    // Serialize message field [pos0]
    bufferOffset = _serializer.float32(obj.pos0, buffer, bufferOffset);
    // Serialize message field [curr0B]
    bufferOffset = _serializer.float32(obj.curr0B, buffer, bufferOffset);
    // Serialize message field [curr0C]
    bufferOffset = _serializer.float32(obj.curr0C, buffer, bufferOffset);
    // Serialize message field [temp0]
    bufferOffset = _serializer.float32(obj.temp0, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type odrive_msg
    let len;
    let data = new odrive_msg(null);
    // Deserialize message field [target]
    data.target = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vbus]
    data.vbus = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error0]
    data.error0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [state0]
    data.state0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vel0]
    data.vel0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos0]
    data.pos0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [curr0B]
    data.curr0B = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [curr0C]
    data.curr0C = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temp0]
    data.temp0 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_odrive/odrive_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86f9cf508f5d40f79760e11abc87c20f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Header header    # ROS Message headaer
    
    uint8 target      # Target
    
    float32 vbus      # Bus voltage
    
    int32 error0      # Axis 0 error
    int32 state0      # Axis 0 state
    float32 vel0      # Axis 0 velocity 
    float32 pos0      # Axis 0 encoder position
    float32 curr0B    # Axis 0 motor channel B current
    float32 curr0C    # Axis 0 motor channel C current
    float32 temp0     # Axis 0 invertr temperature
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new odrive_msg(null);
    if (msg.target !== undefined) {
      resolved.target = msg.target;
    }
    else {
      resolved.target = 0
    }

    if (msg.vbus !== undefined) {
      resolved.vbus = msg.vbus;
    }
    else {
      resolved.vbus = 0.0
    }

    if (msg.error0 !== undefined) {
      resolved.error0 = msg.error0;
    }
    else {
      resolved.error0 = 0
    }

    if (msg.state0 !== undefined) {
      resolved.state0 = msg.state0;
    }
    else {
      resolved.state0 = 0
    }

    if (msg.vel0 !== undefined) {
      resolved.vel0 = msg.vel0;
    }
    else {
      resolved.vel0 = 0.0
    }

    if (msg.pos0 !== undefined) {
      resolved.pos0 = msg.pos0;
    }
    else {
      resolved.pos0 = 0.0
    }

    if (msg.curr0B !== undefined) {
      resolved.curr0B = msg.curr0B;
    }
    else {
      resolved.curr0B = 0.0
    }

    if (msg.curr0C !== undefined) {
      resolved.curr0C = msg.curr0C;
    }
    else {
      resolved.curr0C = 0.0
    }

    if (msg.temp0 !== undefined) {
      resolved.temp0 = msg.temp0;
    }
    else {
      resolved.temp0 = 0.0
    }

    return resolved;
    }
};

module.exports = odrive_msg;
