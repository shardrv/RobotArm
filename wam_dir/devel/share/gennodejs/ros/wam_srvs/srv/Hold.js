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

class HoldRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hold = null;
    }
    else {
      if (initObj.hasOwnProperty('hold')) {
        this.hold = initObj.hold
      }
      else {
        this.hold = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HoldRequest
    // Serialize message field [hold]
    bufferOffset = _serializer.bool(obj.hold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HoldRequest
    let len;
    let data = new HoldRequest(null);
    // Deserialize message field [hold]
    data.hold = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/HoldRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '797a139a4299aebd587b00a7001c67f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool hold
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HoldRequest(null);
    if (msg.hold !== undefined) {
      resolved.hold = msg.hold;
    }
    else {
      resolved.hold = false
    }

    return resolved;
    }
};

class HoldResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HoldResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HoldResponse
    let len;
    let data = new HoldResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/HoldResponse';
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
    const resolved = new HoldResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: HoldRequest,
  Response: HoldResponse,
  md5sum() { return '797a139a4299aebd587b00a7001c67f7'; },
  datatype() { return 'wam_srvs/Hold'; }
};
