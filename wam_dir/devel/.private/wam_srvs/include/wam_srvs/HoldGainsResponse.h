// Generated by gencpp from file wam_srvs/HoldGainsResponse.msg
// DO NOT EDIT!


#ifndef WAM_SRVS_MESSAGE_HOLDGAINSRESPONSE_H
#define WAM_SRVS_MESSAGE_HOLDGAINSRESPONSE_H


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
struct HoldGainsResponse_
{
  typedef HoldGainsResponse_<ContainerAllocator> Type;

  HoldGainsResponse_()
    {
    }
  HoldGainsResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct HoldGainsResponse_

typedef ::wam_srvs::HoldGainsResponse_<std::allocator<void> > HoldGainsResponse;

typedef boost::shared_ptr< ::wam_srvs::HoldGainsResponse > HoldGainsResponsePtr;
typedef boost::shared_ptr< ::wam_srvs::HoldGainsResponse const> HoldGainsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wam_srvs::HoldGainsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::wam_srvs::HoldGainsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wam_srvs/HoldGainsResponse";
  }

  static const char* value(const ::wam_srvs::HoldGainsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::wam_srvs::HoldGainsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HoldGainsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wam_srvs::HoldGainsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::wam_srvs::HoldGainsResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // WAM_SRVS_MESSAGE_HOLDGAINSRESPONSE_H
