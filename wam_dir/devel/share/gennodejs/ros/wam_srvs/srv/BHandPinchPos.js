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

class BHandPinchPosRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radians = null;
    }
    else {
      if (initObj.hasOwnProperty('radians')) {
        this.radians = initObj.radians
      }
      else {
        this.radians = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BHandPinchPosRequest
    // Serialize message field [radians]
    bufferOffset = _serializer.float32(obj.radians, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BHandPinchPosRequest
    let len;
    let data = new BHandPinchPosRequest(null);
    // Deserialize message field [radians]
    data.radians = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/BHandPinchPosRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '718158cfca4f89c6952f799c53697f42';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 radians
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BHandPinchPosRequest(null);
    if (msg.radians !== undefined) {
      resolved.radians = msg.radians;
    }
    else {
      resolved.radians = 0.0
    }

    return resolved;
    }
};

class BHandPinchPosResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BHandPinchPosResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BHandPinchPosResponse
    let len;
    let data = new BHandPinchPosResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/BHandPinchPosResponse';
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
    const resolved = new BHandPinchPosResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: BHandPinchPosRequest,
  Response: BHandPinchPosResponse,
  md5sum() { return '718158cfca4f89c6952f799c53697f42'; },
  datatype() { return 'wam_srvs/BHandPinchPos'; }
};
