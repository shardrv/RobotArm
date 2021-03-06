# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from wam_srvs/FollowPathRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class FollowPathRequest(genpy.Message):
  _md5sum = "d84f5b474d984f3bb9b08180eaffe23c"
  _type = "wam_srvs/FollowPathRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Point32[]   position
geometry_msgs/Point32[]   normal
int32 size

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z"""
  __slots__ = ['position','normal','size']
  _slot_types = ['geometry_msgs/Point32[]','geometry_msgs/Point32[]','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       position,normal,size

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FollowPathRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.position is None:
        self.position = []
      if self.normal is None:
        self.normal = []
      if self.size is None:
        self.size = 0
    else:
      self.position = []
      self.normal = []
      self.size = 0

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
      length = len(self.position)
      buff.write(_struct_I.pack(length))
      for val1 in self.position:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      length = len(self.normal)
      buff.write(_struct_I.pack(length))
      for val1 in self.normal:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      buff.write(_get_struct_i().pack(self.size))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.position is None:
        self.position = None
      if self.normal is None:
        self.normal = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.position = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.position.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.normal = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.normal.append(val1)
      start = end
      end += 4
      (self.size,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.position)
      buff.write(_struct_I.pack(length))
      for val1 in self.position:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      length = len(self.normal)
      buff.write(_struct_I.pack(length))
      for val1 in self.normal:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      buff.write(_get_struct_i().pack(self.size))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.position is None:
        self.position = None
      if self.normal is None:
        self.normal = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.position = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.position.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.normal = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.normal.append(val1)
      start = end
      end += 4
      (self.size,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from wam_srvs/FollowPathResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class FollowPathResponse(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "wam_srvs/FollowPathResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FollowPathResponse, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class FollowPath(object):
  _type          = 'wam_srvs/FollowPath'
  _md5sum = 'd84f5b474d984f3bb9b08180eaffe23c'
  _request_class  = FollowPathRequest
  _response_class = FollowPathResponse
