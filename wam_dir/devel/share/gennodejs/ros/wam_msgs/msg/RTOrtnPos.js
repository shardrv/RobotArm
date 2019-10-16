// Auto-generated. Do not edit!

// (in-package wam_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RTOrtnPos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.orientation = null;
      this.rate_limits = null;
    }
    else {
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('rate_limits')) {
        this.rate_limits = initObj.rate_limits
      }
      else {
        this.rate_limits = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RTOrtnPos
    // Check that the constant length array field [orientation] has the right length
    if (obj.orientation.length !== 4) {
      throw new Error('Unable to serialize array field orientation - length must be 4')
    }
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float32(obj.orientation, buffer, bufferOffset, 4);
    // Check that the constant length array field [rate_limits] has the right length
    if (obj.rate_limits.length !== 4) {
      throw new Error('Unable to serialize array field rate_limits - length must be 4')
    }
    // Serialize message field [rate_limits]
    bufferOffset = _arraySerializer.float32(obj.rate_limits, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTOrtnPos
    let len;
    let data = new RTOrtnPos(null);
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [rate_limits]
    data.rate_limits = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wam_msgs/RTOrtnPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b352081db430205c87e0e439f09a0b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[4] orientation
    float32[4] rate_limits
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTOrtnPos(null);
    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = new Array(4).fill(0)
    }

    if (msg.rate_limits !== undefined) {
      resolved.rate_limits = msg.rate_limits;
    }
    else {
      resolved.rate_limits = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = RTOrtnPos;
