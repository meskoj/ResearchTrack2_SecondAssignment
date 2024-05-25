// Auto-generated. Do not edit!

// (in-package assignment_2_2023.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class robotInfoSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robotInfoSrvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robotInfoSrvRequest
    let len;
    let data = new robotInfoSrvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2023/robotInfoSrvRequest';
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
    const resolved = new robotInfoSrvRequest(null);
    return resolved;
    }
};

class robotInfoSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.vel_x = null;
      this.vel_z = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('vel_x')) {
        this.vel_x = initObj.vel_x
      }
      else {
        this.vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('vel_z')) {
        this.vel_z = initObj.vel_z
      }
      else {
        this.vel_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robotInfoSrvResponse
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [vel_x]
    bufferOffset = _serializer.float64(obj.vel_x, buffer, bufferOffset);
    // Serialize message field [vel_z]
    bufferOffset = _serializer.float64(obj.vel_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robotInfoSrvResponse
    let len;
    let data = new robotInfoSrvResponse(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_x]
    data.vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_z]
    data.vel_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2023/robotInfoSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '864975fef3d37f98fc7bae31c8fe41ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance
    float64 vel_x
    float64 vel_z
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robotInfoSrvResponse(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.vel_x !== undefined) {
      resolved.vel_x = msg.vel_x;
    }
    else {
      resolved.vel_x = 0.0
    }

    if (msg.vel_z !== undefined) {
      resolved.vel_z = msg.vel_z;
    }
    else {
      resolved.vel_z = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: robotInfoSrvRequest,
  Response: robotInfoSrvResponse,
  md5sum() { return '864975fef3d37f98fc7bae31c8fe41ea'; },
  datatype() { return 'assignment_2_2023/robotInfoSrv'; }
};
