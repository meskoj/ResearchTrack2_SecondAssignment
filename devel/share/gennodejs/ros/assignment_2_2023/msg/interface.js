// Auto-generated. Do not edit!

// (in-package assignment_2_2023.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class interface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sel = null;
      this.x = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('sel')) {
        this.sel = initObj.sel
      }
      else {
        this.sel = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type interface
    // Serialize message field [sel]
    bufferOffset = _serializer.string(obj.sel, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.int32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.int32(obj.y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type interface
    let len;
    let data = new interface(null);
    // Deserialize message field [sel]
    data.sel = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sel);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assignment_2_2023/interface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '892675a95328f24a296f6089f592b625';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message sent by the interface
    
    string sel
    
    int32 x
    int32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new interface(null);
    if (msg.sel !== undefined) {
      resolved.sel = msg.sel;
    }
    else {
      resolved.sel = ''
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    return resolved;
    }
};

module.exports = interface;
