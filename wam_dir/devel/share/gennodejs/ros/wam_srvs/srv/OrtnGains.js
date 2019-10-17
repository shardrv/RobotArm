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

class OrtnGainsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.kp_gain = null;
      this.kd_gain = null;
    }
    else {
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
    // Serializes a message object of type OrtnGainsRequest
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
    //deserializes a message object of type OrtnGainsRequest
    let len;
    let data = new OrtnGainsRequest(null);
    // Deserialize message field [kp_gain]
    data.kp_gain = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [kd_gain]
    data.kd_gain = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/OrtnGainsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26320303f516c59455807c34544a7fb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] kp_gain
    float32[3] kd_gain
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OrtnGainsRequest(null);
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

class OrtnGainsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OrtnGainsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OrtnGainsResponse
    let len;
    let data = new OrtnGainsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/OrtnGainsResponse';
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
    const resolved = new OrtnGainsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: OrtnGainsRequest,
  Response: OrtnGainsResponse,
  md5sum() { return '26320303f516c59455807c34544a7fb5'; },
  datatype() { return 'wam_srvs/OrtnGains'; }
};
