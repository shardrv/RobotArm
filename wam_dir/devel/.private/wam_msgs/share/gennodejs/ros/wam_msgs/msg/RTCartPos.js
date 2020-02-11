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

class RTCartPos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.rate_limits = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('rate_limits')) {
        this.rate_limits = initObj.rate_limits
      }
      else {
        this.rate_limits = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RTCartPos
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 3) {
      throw new Error('Unable to serialize array field position - length must be 3')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, 3);
    // Check that the constant length array field [rate_limits] has the right length
    if (obj.rate_limits.length !== 3) {
      throw new Error('Unable to serialize array field rate_limits - length must be 3')
    }
    // Serialize message field [rate_limits]
    bufferOffset = _arraySerializer.float32(obj.rate_limits, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTCartPos
    let len;
    let data = new RTCartPos(null);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [rate_limits]
    data.rate_limits = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wam_msgs/RTCartPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f40423d4ca09896785d982c621cba554';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] position
    float32[3] rate_limits
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTCartPos(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(3).fill(0)
    }

    if (msg.rate_limits !== undefined) {
      resolved.rate_limits = msg.rate_limits;
    }
    else {
      resolved.rate_limits = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = RTCartPos;
