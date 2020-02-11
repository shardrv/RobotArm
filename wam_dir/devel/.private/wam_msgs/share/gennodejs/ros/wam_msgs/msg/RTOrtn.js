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

class RTOrtn {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.orientation = null;
      this.kp = null;
      this.kd = null;
      this.change_gains = null;
    }
    else {
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('kp')) {
        this.kp = initObj.kp
      }
      else {
        this.kp = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('kd')) {
        this.kd = initObj.kd
      }
      else {
        this.kd = new Array(3).fill(0);
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
    // Serializes a message object of type RTOrtn
    // Check that the constant length array field [orientation] has the right length
    if (obj.orientation.length !== 4) {
      throw new Error('Unable to serialize array field orientation - length must be 4')
    }
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float32(obj.orientation, buffer, bufferOffset, 4);
    // Check that the constant length array field [kp] has the right length
    if (obj.kp.length !== 3) {
      throw new Error('Unable to serialize array field kp - length must be 3')
    }
    // Serialize message field [kp]
    bufferOffset = _arraySerializer.float32(obj.kp, buffer, bufferOffset, 3);
    // Check that the constant length array field [kd] has the right length
    if (obj.kd.length !== 3) {
      throw new Error('Unable to serialize array field kd - length must be 3')
    }
    // Serialize message field [kd]
    bufferOffset = _arraySerializer.float32(obj.kd, buffer, bufferOffset, 3);
    // Serialize message field [change_gains]
    bufferOffset = _serializer.bool(obj.change_gains, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTOrtn
    let len;
    let data = new RTOrtn(null);
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [kp]
    data.kp = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [kd]
    data.kd = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [change_gains]
    data.change_gains = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wam_msgs/RTOrtn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e3f1019db9e6ee5ee0fb74a74917cbb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[4] orientation
    float32[3] kp
    float32[3] kd
    bool change_gains
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTOrtn(null);
    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = new Array(4).fill(0)
    }

    if (msg.kp !== undefined) {
      resolved.kp = msg.kp;
    }
    else {
      resolved.kp = new Array(3).fill(0)
    }

    if (msg.kd !== undefined) {
      resolved.kd = msg.kd;
    }
    else {
      resolved.kd = new Array(3).fill(0)
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

module.exports = RTOrtn;
