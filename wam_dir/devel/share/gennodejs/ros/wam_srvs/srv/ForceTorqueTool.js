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

class ForceTorqueToolRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force = null;
      this.torque = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = [];
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = [];
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForceTorqueToolRequest
    // Serialize message field [force]
    bufferOffset = _arraySerializer.float32(obj.force, buffer, bufferOffset, null);
    // Serialize message field [torque]
    bufferOffset = _arraySerializer.float32(obj.torque, buffer, bufferOffset, null);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForceTorqueToolRequest
    let len;
    let data = new ForceTorqueToolRequest(null);
    // Deserialize message field [force]
    data.force = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [torque]
    data.torque = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.force.length;
    length += 4 * object.torque.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/ForceTorqueToolRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85c62cf949363f45f75d48fcf714c6ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[]   force
    float32[]   torque
    float32     time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForceTorqueToolRequest(null);
    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = []
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = []
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

class ForceTorqueToolResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForceTorqueToolResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForceTorqueToolResponse
    let len;
    let data = new ForceTorqueToolResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/ForceTorqueToolResponse';
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
    const resolved = new ForceTorqueToolResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ForceTorqueToolRequest,
  Response: ForceTorqueToolResponse,
  md5sum() { return '85c62cf949363f45f75d48fcf714c6ad'; },
  datatype() { return 'wam_srvs/ForceTorqueTool'; }
};
