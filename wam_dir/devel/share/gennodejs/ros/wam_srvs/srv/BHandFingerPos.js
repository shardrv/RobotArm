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

class BHandFingerPosRequest {
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
        this.radians = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BHandFingerPosRequest
    // Check that the constant length array field [radians] has the right length
    if (obj.radians.length !== 3) {
      throw new Error('Unable to serialize array field radians - length must be 3')
    }
    // Serialize message field [radians]
    bufferOffset = _arraySerializer.float32(obj.radians, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BHandFingerPosRequest
    let len;
    let data = new BHandFingerPosRequest(null);
    // Deserialize message field [radians]
    data.radians = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/BHandFingerPosRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8c122f38450d0302ba1a30c9c588995';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] radians
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BHandFingerPosRequest(null);
    if (msg.radians !== undefined) {
      resolved.radians = msg.radians;
    }
    else {
      resolved.radians = new Array(3).fill(0)
    }

    return resolved;
    }
};

class BHandFingerPosResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BHandFingerPosResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BHandFingerPosResponse
    let len;
    let data = new BHandFingerPosResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/BHandFingerPosResponse';
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
    const resolved = new BHandFingerPosResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: BHandFingerPosRequest,
  Response: BHandFingerPosResponse,
  md5sum() { return 'b8c122f38450d0302ba1a30c9c588995'; },
  datatype() { return 'wam_srvs/BHandFingerPos'; }
};
