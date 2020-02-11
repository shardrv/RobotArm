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

class HoldGainsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hold = null;
      this.kp = null;
      this.kd = null;
    }
    else {
      if (initObj.hasOwnProperty('hold')) {
        this.hold = initObj.hold
      }
      else {
        this.hold = false;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HoldGainsRequest
    // Serialize message field [hold]
    bufferOffset = _serializer.bool(obj.hold, buffer, bufferOffset);
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HoldGainsRequest
    let len;
    let data = new HoldGainsRequest(null);
    // Deserialize message field [hold]
    data.hold = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [kp]
    data.kp = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [kd]
    data.kd = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/HoldGainsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2321330bd020469c41b8f08acef334cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool hold
    float32[3] kp
    float32[3] kd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HoldGainsRequest(null);
    if (msg.hold !== undefined) {
      resolved.hold = msg.hold;
    }
    else {
      resolved.hold = false
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

    return resolved;
    }
};

class HoldGainsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HoldGainsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HoldGainsResponse
    let len;
    let data = new HoldGainsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/HoldGainsResponse';
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
    const resolved = new HoldGainsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: HoldGainsRequest,
  Response: HoldGainsResponse,
  md5sum() { return '2321330bd020469c41b8f08acef334cb'; },
  datatype() { return 'wam_srvs/HoldGains'; }
};
