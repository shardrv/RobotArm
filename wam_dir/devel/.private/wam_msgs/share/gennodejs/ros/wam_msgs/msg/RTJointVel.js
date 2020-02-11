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

class RTJointVel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocities = null;
    }
    else {
      if (initObj.hasOwnProperty('velocities')) {
        this.velocities = initObj.velocities
      }
      else {
        this.velocities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RTJointVel
    // Serialize message field [velocities]
    bufferOffset = _arraySerializer.float32(obj.velocities, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTJointVel
    let len;
    let data = new RTJointVel(null);
    // Deserialize message field [velocities]
    data.velocities = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.velocities.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wam_msgs/RTJointVel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b1dee67c9ae4d5adf87be09d4bf02ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] velocities
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTJointVel(null);
    if (msg.velocities !== undefined) {
      resolved.velocities = msg.velocities;
    }
    else {
      resolved.velocities = []
    }

    return resolved;
    }
};

module.exports = RTJointVel;
