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

class RTVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.v_direction = null;
      this.v_magnitude = null;
      this.kp = null;
      this.change_gains = null;
    }
    else {
      if (initObj.hasOwnProperty('v_direction')) {
        this.v_direction = initObj.v_direction
      }
      else {
        this.v_direction = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('v_magnitude')) {
        this.v_magnitude = initObj.v_magnitude
      }
      else {
        this.v_magnitude = 0.0;
      }
      if (initObj.hasOwnProperty('kp')) {
        this.kp = initObj.kp
      }
      else {
        this.kp = 0.0;
      }
      if (initObj.hasOwnProperty('change_gains')) {
        this.change_gains = initObj.change_gains
      }
      else {
        this.change_gains = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RTVelocity
    // Check that the constant length array field [v_direction] has the right length
    if (obj.v_direction.length !== 3) {
      throw new Error('Unable to serialize array field v_direction - length must be 3')
    }
    // Serialize message field [v_direction]
    bufferOffset = _arraySerializer.float32(obj.v_direction, buffer, bufferOffset, 3);
    // Serialize message field [v_magnitude]
    bufferOffset = _serializer.float32(obj.v_magnitude, buffer, bufferOffset);
    // Serialize message field [kp]
    bufferOffset = _serializer.float32(obj.kp, buffer, bufferOffset);
    // Serialize message field [change_gains]
    bufferOffset = _serializer.bool(obj.change_gains, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTVelocity
    let len;
    let data = new RTVelocity(null);
    // Deserialize message field [v_direction]
    data.v_direction = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [v_magnitude]
    data.v_magnitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kp]
    data.kp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [change_gains]
    data.change_gains = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wam_msgs/RTVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fd73d4c205ad728e90044131e5d954b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] v_direction
    float32 v_magnitude
    float32 kp
    bool change_gains
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTVelocity(null);
    if (msg.v_direction !== undefined) {
      resolved.v_direction = msg.v_direction;
    }
    else {
      resolved.v_direction = new Array(3).fill(0)
    }

    if (msg.v_magnitude !== undefined) {
      resolved.v_magnitude = msg.v_magnitude;
    }
    else {
      resolved.v_magnitude = 0.0
    }

    if (msg.kp !== undefined) {
      resolved.kp = msg.kp;
    }
    else {
      resolved.kp = 0.0
    }

    if (msg.change_gains !== undefined) {
      resolved.change_gains = msg.change_gains;
    }
    else {
      resolved.change_gains = false
    }

    return resolved;
    }
};

module.exports = RTVelocity;
