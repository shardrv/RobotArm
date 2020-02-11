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

class RTPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.orientation = null;
      this.pos_rate_limits = null;
      this.ortn_rate_limits = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('pos_rate_limits')) {
        this.pos_rate_limits = initObj.pos_rate_limits
      }
      else {
        this.pos_rate_limits = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('ortn_rate_limits')) {
        this.ortn_rate_limits = initObj.ortn_rate_limits
      }
      else {
        this.ortn_rate_limits = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RTPose
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 3) {
      throw new Error('Unable to serialize array field position - length must be 3')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, 3);
    // Check that the constant length array field [orientation] has the right length
    if (obj.orientation.length !== 4) {
      throw new Error('Unable to serialize array field orientation - length must be 4')
    }
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float32(obj.orientation, buffer, bufferOffset, 4);
    // Check that the constant length array field [pos_rate_limits] has the right length
    if (obj.pos_rate_limits.length !== 3) {
      throw new Error('Unable to serialize array field pos_rate_limits - length must be 3')
    }
    // Serialize message field [pos_rate_limits]
    bufferOffset = _arraySerializer.float32(obj.pos_rate_limits, buffer, bufferOffset, 3);
    // Check that the constant length array field [ortn_rate_limits] has the right length
    if (obj.ortn_rate_limits.length !== 4) {
      throw new Error('Unable to serialize array field ortn_rate_limits - length must be 4')
    }
    // Serialize message field [ortn_rate_limits]
    bufferOffset = _arraySerializer.float32(obj.ortn_rate_limits, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTPose
    let len;
    let data = new RTPose(null);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [pos_rate_limits]
    data.pos_rate_limits = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [ortn_rate_limits]
    data.ortn_rate_limits = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wam_msgs/RTPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34cb882fafa374fde18bf3b5e23cd4cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] position
    float32[4] orientation
    float32[3] pos_rate_limits
    float32[4] ortn_rate_limits
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTPose(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(3).fill(0)
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = new Array(4).fill(0)
    }

    if (msg.pos_rate_limits !== undefined) {
      resolved.pos_rate_limits = msg.pos_rate_limits;
    }
    else {
      resolved.pos_rate_limits = new Array(3).fill(0)
    }

    if (msg.ortn_rate_limits !== undefined) {
      resolved.ortn_rate_limits = msg.ortn_rate_limits;
    }
    else {
      resolved.ortn_rate_limits = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = RTPose;
