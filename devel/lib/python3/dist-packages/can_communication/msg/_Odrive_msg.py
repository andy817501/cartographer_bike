# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from can_communication/Odrive_msg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Odrive_msg(genpy.Message):
  _md5sum = "42d24095fdb231486a76000750ac32b2"
  _type = "can_communication/Odrive_msg"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int16     Device_ID
int16     Command
float32   Motor_rpm
float32   Motor_pos
float32   Motor_torque
float32   Motor_voltage
float32   Motor_current"""
  __slots__ = ['Device_ID','Command','Motor_rpm','Motor_pos','Motor_torque','Motor_voltage','Motor_current']
  _slot_types = ['int16','int16','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Device_ID,Command,Motor_rpm,Motor_pos,Motor_torque,Motor_voltage,Motor_current

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Odrive_msg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Device_ID is None:
        self.Device_ID = 0
      if self.Command is None:
        self.Command = 0
      if self.Motor_rpm is None:
        self.Motor_rpm = 0.
      if self.Motor_pos is None:
        self.Motor_pos = 0.
      if self.Motor_torque is None:
        self.Motor_torque = 0.
      if self.Motor_voltage is None:
        self.Motor_voltage = 0.
      if self.Motor_current is None:
        self.Motor_current = 0.
    else:
      self.Device_ID = 0
      self.Command = 0
      self.Motor_rpm = 0.
      self.Motor_pos = 0.
      self.Motor_torque = 0.
      self.Motor_voltage = 0.
      self.Motor_current = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2h5f().pack(_x.Device_ID, _x.Command, _x.Motor_rpm, _x.Motor_pos, _x.Motor_torque, _x.Motor_voltage, _x.Motor_current))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.Device_ID, _x.Command, _x.Motor_rpm, _x.Motor_pos, _x.Motor_torque, _x.Motor_voltage, _x.Motor_current,) = _get_struct_2h5f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2h5f().pack(_x.Device_ID, _x.Command, _x.Motor_rpm, _x.Motor_pos, _x.Motor_torque, _x.Motor_voltage, _x.Motor_current))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.Device_ID, _x.Command, _x.Motor_rpm, _x.Motor_pos, _x.Motor_torque, _x.Motor_voltage, _x.Motor_current,) = _get_struct_2h5f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2h5f = None
def _get_struct_2h5f():
    global _struct_2h5f
    if _struct_2h5f is None:
        _struct_2h5f = struct.Struct("<2h5f")
    return _struct_2h5f
