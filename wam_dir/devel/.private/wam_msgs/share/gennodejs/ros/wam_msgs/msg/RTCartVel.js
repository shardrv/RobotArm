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

class RTCartVel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction = null;
      this.magnitude = null;
    }
    else {
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('magnitude')) {
        this.magnitude = initObj.magnitude
      }
      else {
        this.magnitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RTCartVel
    // Check that the constant length array field [direction] has the right length
    if (obj.direction.length !== 3) {
      throw new Error('Unable to serialize array field direction - length must be 3')
    }
    // Serialize message field [direction]
    bufferOffset = _arraySerializer.float32(obj.direction, buffer, bufferOffset, 3);
    // Serialize message field [magnitude]
    bufferOffset = _serializer.float32(obj.magnitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTCartVel
    let len;
    let data = new RTCartVel(null);
    // Deserialize message field [direction]
    data.direction = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [magnitude]
    data.magnitude = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wam_msgs/RTCartVel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bde6e49ce1902bc915138d25af0e9ef1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] direction
    float32    magnitude
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTCartVel(null);
    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = new Array(3).fill(0)
    }

    if (msg.magnitude !== undefined) {
      resolved.magnitude = msg.magnitude;
    }
    else {
      resolved.magnitude = 0.0
    }

    return resolved;
    }
};

module.exports = RTCartVel;
