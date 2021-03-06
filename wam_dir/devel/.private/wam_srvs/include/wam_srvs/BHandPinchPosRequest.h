// Generated by gencpp from file wam_srvs/BHandPinchPosRequest.msg
// DO NOT EDIT!


#ifndef WAM_SRVS_MESSAGE_BHANDPINCHPOSREQUEST_H
#define WAM_SRVS_MESSAGE_BHANDPINCHPOSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace wam_srvs
{
template <class ContainerAllocator>
struct BHandPinchPosRequest_
{
  typedef BHandPinchPosRequest_<ContainerAllocator> Type;

  BHandPinchPosRequest_()
    : radians(0.0)  {
    }
  BHandPinchPosRequest_(const ContainerAllocator& _alloc)
    : radians(0.0)  {
  (void)_alloc;
    }



   typedef float _radians_type;
  _radians_type radians;





  typedef boost::shared_ptr< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BHandPinchPosRequest_

typedef ::wam_srvs::BHandPinchPosRequest_<std::allocator<void> > BHandPinchPosRequest;

typedef boost::shared_ptr< ::wam_srvs::BHandPinchPosRequest > BHandPinchPosRequestPtr;
typedef boost::shared_ptr< ::wam_srvs::BHandPinchPosRequest const> BHandPinchPosRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wam_srvs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "718158cfca4f89c6952f799c53697f42";
  }

  static const char* value(const ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x718158cfca4f89c6ULL;
  static const uint64_t static_value2 = 0x952f799c53697f42ULL;
};

template<class ContainerAllocator>
struct DataType< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wam_srvs/BHandPinchPosRequest";
  }

  static const char* value(const ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 radians\n"
;
  }

  static const char* value(const ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.radians);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BHandPinchPosRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wam_srvs::BHandPinchPosRequest_<ContainerAllocator>& v)
  {
    s << indent << "radians: ";
    Printer<float>::stream(s, indent + "  ", v.radians);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAM_SRVS_MESSAGE_BHANDPINCHPOSREQUEST_H
