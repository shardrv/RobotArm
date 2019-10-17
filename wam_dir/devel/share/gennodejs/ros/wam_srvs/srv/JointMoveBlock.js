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

class JointMoveBlockRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
      this.blocking = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
      if (initObj.hasOwnProperty('blocking')) {
        this.blocking = initObj.blocking
      }
      else {
        this.blocking = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointMoveBlockRequest
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float32(obj.joints, buffer, bufferOffset, null);
    // Serialize message field [blocking]
    bufferOffset = _serializer.bool(obj.blocking, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointMoveBlockRequest
    let len;
    let data = new JointMoveBlockRequest(null);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [blocking]
    data.blocking = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joints.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/JointMoveBlockRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a35c2d19fdef1f1b6b9cace11da2b5c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joints
    bool blocking
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointMoveBlockRequest(null);
    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    if (msg.blocking !== undefined) {
      resolved.blocking = msg.blocking;
    }
    else {
      resolved.blocking = false
    }

    return resolved;
    }
};

class JointMoveBlockResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointMoveBlockResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointMoveBlockResponse
    let len;
    let data = new JointMoveBlockResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wam_srvs/JointMoveBlockResponse';
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
    const resolved = new JointMoveBlockResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: JointMoveBlockRequest,
  Response: JointMoveBlockResponse,
  md5sum() { return 'a35c2d19fdef1f1b6b9cace11da2b5c6'; },
  datatype() { return 'wam_srvs/JointMoveBlock'; }
};
