// Auto-generated. Do not edit!

// (in-package wam_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class OrtnSplitMoveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.orientation = null;
      this.kp_gain = null;
      this.kd_gain = null;
    }
    else {
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('kp_gain')) {
        this.kp_gain = initObj.kp_gain
      }
      else {
        this.kp_gain = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('kd_gain')) {
        this.kd_gain = initObj.kd_gain
      }
      else {
        this.kd_gain = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OrtnSplitMoveRequest
    // Check that the constant length array field [orientation] has the right length
    if (obj.orientation.length !== 4) {
      throw new Error('Unable to serialize array field orientation - length must be 4')
    }
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float32(obj.orientation, buffer, bufferOffset, 4);
    // Check that the constant length array field [kp_gain] has the right length
    if (obj.kp_gain.length !== 3) {
      throw new Error('Unable to serialize array field kp_gain - length must be 3')
    }
    // Serialize message field [kp_gain]
    bufferOffset = _arraySerializer.float32(obj.kp_gain, buffer, bufferOffset, 3);
    // Check that the constant length array field [kd_gain] has the right length
    if (obj.kd_gain.length !== 3) {
      throw new Error('Unable to serialize array field kd_gain - length must be 3')
    }
    // Serialize message field [kd_gain]
    bufferOffset = _arraySerializer.float32(obj.kd_gain, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OrtnSplitMoveRequest
    let len;
    let data = new OrtnSplitMoveRequest(null);
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [kp_gain]
    data.kp_gain = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [kd_gain]
    data.kd_gain = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/OrtnSplitMoveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd493f6e469f2b52d5ef0e3d041ef18b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[4] orientation
    float32[3] kp_gain
    float32[3] kd_gain
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OrtnSplitMoveRequest(null);
    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = new Array(4).fill(0)
    }

    if (msg.kp_gain !== undefined) {
      resolved.kp_gain = msg.kp_gain;
    }
    else {
      resolved.kp_gain = new Array(3).fill(0)
    }

    if (msg.kd_gain !== undefined) {
      resolved.kd_gain = msg.kd_gain;
    }
    else {
      resolved.kd_gain = new Array(3).fill(0)
    }

    return resolved;
    }
};

class OrtnSplitMoveResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OrtnSplitMoveResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OrtnSplitMoveResponse
    let len;
    let data = new OrtnSplitMoveResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/OrtnSplitMoveResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OrtnSplitMoveResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: OrtnSplitMoveRequest,
  Response: OrtnSplitMoveResponse,
  md5sum() { return 'd493f6e469f2b52d5ef0e3d041ef18b7'; },
  datatype() { return 'wam_srvs/OrtnSplitMove'; }
};
