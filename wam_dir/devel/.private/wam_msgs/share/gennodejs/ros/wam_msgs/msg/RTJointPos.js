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

class RTJointPos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
      this.rate_limits = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
      if (initObj.hasOwnProperty('rate_limits')) {
        this.rate_limits = initObj.rate_limits
      }
      else {
        this.rate_limits = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RTJointPos
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float32(obj.joints, buffer, bufferOffset, null);
    // Serialize message field [rate_limits]
    bufferOffset = _arraySerializer.float32(obj.rate_limits, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTJointPos
    let len;
    let data = new RTJointPos(null);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rate_limits]
    data.rate_limits = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joints.length;
    length += 4 * object.rate_limits.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wam_msgs/RTJointPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6db71b8c4d3c870c701b3f89e85b7a36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joints
    float32[] rate_limits
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTJointPos(null);
    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    if (msg.rate_limits !== undefined) {
      resolved.rate_limits = msg.rate_limits;
    }
    else {
      resolved.rate_limits = []
    }

    return resolved;
    }
};

module.exports = RTJointPos;
