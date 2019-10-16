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

class RTOrtnVel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angular = null;
      this.magnitude = null;
    }
    else {
      if (initObj.hasOwnProperty('angular')) {
        this.angular = initObj.angular
      }
      else {
        this.angular = new Array(3).fill(0);
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
    // Serializes a message object of type RTOrtnVel
    // Check that the constant length array field [angular] has the right length
    if (obj.angular.length !== 3) {
      throw new Error('Unable to serialize array field angular - length must be 3')
    }
    // Serialize message field [angular]
    bufferOffset = _arraySerializer.float32(obj.angular, buffer, bufferOffset, 3);
    // Serialize message field [magnitude]
    bufferOffset = _serializer.float32(obj.magnitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTOrtnVel
    let len;
    let data = new RTOrtnVel(null);
    // Deserialize message field [angular]
    data.angular = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [magnitude]
    data.magnitude = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wam_msgs/RTOrtnVel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2326f85574083a0a1fc4fddeff59781c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] angular
    float32	   magnitude
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTOrtnVel(null);
    if (msg.angular !== undefined) {
      resolved.angular = msg.angular;
    }
    else {
      resolved.angular = new Array(3).fill(0)
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

module.exports = RTOrtnVel;
