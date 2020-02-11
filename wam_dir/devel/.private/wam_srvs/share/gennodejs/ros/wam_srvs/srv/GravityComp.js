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

class GravityCompRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gravity = null;
    }
    else {
      if (initObj.hasOwnProperty('gravity')) {
        this.gravity = initObj.gravity
      }
      else {
        this.gravity = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GravityCompRequest
    // Serialize message field [gravity]
    bufferOffset = _serializer.bool(obj.gravity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GravityCompRequest
    let len;
    let data = new GravityCompRequest(null);
    // Deserialize message field [gravity]
    data.gravity = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/GravityCompRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f83a9fe078fab9865d863fbf215e1c14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool gravity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GravityCompRequest(null);
    if (msg.gravity !== undefined) {
      resolved.gravity = msg.gravity;
    }
    else {
      resolved.gravity = false
    }

    return resolved;
    }
};

class GravityCompResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GravityCompResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GravityCompResponse
    let len;
    let data = new GravityCompResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/GravityCompResponse';
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
    const resolved = new GravityCompResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: GravityCompRequest,
  Response: GravityCompResponse,
  md5sum() { return 'f83a9fe078fab9865d863fbf215e1c14'; },
  datatype() { return 'wam_srvs/GravityComp'; }
};
