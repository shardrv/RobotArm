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

class HapticSphereRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radius = null;
      this.kp = null;
      this.kd = null;
      this.trigger = null;
    }
    else {
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('kp')) {
        this.kp = initObj.kp
      }
      else {
        this.kp = 0.0;
      }
      if (initObj.hasOwnProperty('kd')) {
        this.kd = initObj.kd
      }
      else {
        this.kd = 0.0;
      }
      if (initObj.hasOwnProperty('trigger')) {
        this.trigger = initObj.trigger
      }
      else {
        this.trigger = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HapticSphereRequest
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    // Serialize message field [kp]
    bufferOffset = _serializer.float32(obj.kp, buffer, bufferOffset);
    // Serialize message field [kd]
    bufferOffset = _serializer.float32(obj.kd, buffer, bufferOffset);
    // Serialize message field [trigger]
    bufferOffset = _serializer.bool(obj.trigger, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HapticSphereRequest
    let len;
    let data = new HapticSphereRequest(null);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kp]
    data.kp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kd]
    data.kd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trigger]
    data.trigger = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/HapticSphereRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26022341c3342c1799fc44701262bee2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 radius
    float32 kp
    float32 kd
    bool trigger
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HapticSphereRequest(null);
    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.kp !== undefined) {
      resolved.kp = msg.kp;
    }
    else {
      resolved.kp = 0.0
    }

    if (msg.kd !== undefined) {
      resolved.kd = msg.kd;
    }
    else {
      resolved.kd = 0.0
    }

    if (msg.trigger !== undefined) {
      resolved.trigger = msg.trigger;
    }
    else {
      resolved.trigger = false
    }

    return resolved;
    }
};

class HapticSphereResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HapticSphereResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HapticSphereResponse
    let len;
    let data = new HapticSphereResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/HapticSphereResponse';
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
    const resolved = new HapticSphereResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: HapticSphereRequest,
  Response: HapticSphereResponse,
  md5sum() { return '26022341c3342c1799fc44701262bee2'; },
  datatype() { return 'wam_srvs/HapticSphere'; }
};
