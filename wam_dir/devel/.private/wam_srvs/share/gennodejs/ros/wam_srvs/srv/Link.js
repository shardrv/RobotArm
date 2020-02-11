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

class LinkRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.remote_ip = null;
    }
    else {
      if (initObj.hasOwnProperty('remote_ip')) {
        this.remote_ip = initObj.remote_ip
      }
      else {
        this.remote_ip = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LinkRequest
    // Serialize message field [remote_ip]
    bufferOffset = _serializer.string(obj.remote_ip, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinkRequest
    let len;
    let data = new LinkRequest(null);
    // Deserialize message field [remote_ip]
    data.remote_ip = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.remote_ip.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/LinkRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a40ccb098e8ae81c40c4d8ba9679b483';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string remote_ip
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LinkRequest(null);
    if (msg.remote_ip !== undefined) {
      resolved.remote_ip = msg.remote_ip;
    }
    else {
      resolved.remote_ip = ''
    }

    return resolved;
    }
};

class LinkResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LinkResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinkResponse
    let len;
    let data = new LinkResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/LinkResponse';
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
    const resolved = new LinkResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: LinkRequest,
  Response: LinkResponse,
  md5sum() { return 'a40ccb098e8ae81c40c4d8ba9679b483'; },
  datatype() { return 'wam_srvs/Link'; }
};
