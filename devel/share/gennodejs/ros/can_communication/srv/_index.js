
"use strict";

let VESC_srv = require('./VESC_srv.js')
let CAN_srv = require('./CAN_srv.js')
let Odrive_srv = require('./Odrive_srv.js')

module.exports = {
  VESC_srv: VESC_srv,
  CAN_srv: CAN_srv,
  Odrive_srv: Odrive_srv,
};
