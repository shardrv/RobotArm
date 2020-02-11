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

class ConnectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connect = null;
    }
    else {
      if (initObj.hasOwnProperty('connect')) {
        this.connect = initObj.connect
      }
      else {
        this.connect = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectRequest
    // Serialize message field [connect]
    bufferOffset = _serializer.bool(obj.connect, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectRequest
    let len;
    let data = new ConnectRequest(null);
    // Deserialize message field [connect]
    data.connect = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/ConnectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a31bf7076ca051d3bb47d5d808c4982b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool connect
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectRequest(null);
    if (msg.connect !== undefined) {
      resolved.connect = msg.connect;
    }
    else {
      resolved.connect = false
    }

    return resolved;
    }
};

class ConnectResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectResponse
    let len;
    let data = new ConnectResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/ConnectResponse';
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
    const resolved = new ConnectResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ConnectRequest,
  Response: ConnectResponse,
  md5sum() { return 'a31bf7076ca051d3bb47d5d808c4982b'; },
  datatype() { return 'wam_srvs/Connect'; }
};
