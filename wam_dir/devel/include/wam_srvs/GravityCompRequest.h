// Generated by gencpp from file wam_srvs/GravityCompRequest.msg
// DO NOT EDIT!


#ifndef WAM_SRVS_MESSAGE_GRAVITYCOMPREQUEST_H
#define WAM_SRVS_MESSAGE_GRAVITYCOMPREQUEST_H


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
struct GravityCompRequest_
{
  typedef GravityCompRequest_<ContainerAllocator> Type;

  GravityCompRequest_()
    : gravity(false)  {
    }
  GravityCompRequest_(const ContainerAllocator& _alloc)
    : gravity(false)  {
  (void)_alloc;
    }



   typedef uint8_t _gravity_type;
  _gravity_type gravity;





  typedef boost::shared_ptr< ::wam_srvs::GravityCompRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wam_srvs::GravityCompRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GravityCompRequest_

typedef ::wam_srvs::GravityCompRequest_<std::allocator<void> > GravityCompRequest;

typedef boost::shared_ptr< ::wam_srvs::GravityCompRequest > GravityCompRequestPtr;
typedef boost::shared_ptr< ::wam_srvs::GravityCompRequest const> GravityCompRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wam_srvs::GravityCompRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wam_srvs::GravityCompRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wam_srvs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wam_srvs::GravityCompRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wam_srvs::GravityCompRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_srvs::GravityCompRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_srvs::GravityCompRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_srvs::GravityCompRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_srvs::GravityCompRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wam_srvs::GravityCompRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f83a9fe078fab9865d863fbf215e1c14";
  }

  static const char* value(const ::wam_srvs::GravityCompRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf83a9fe078fab986ULL;
  static const uint64_t static_value2 = 0x5d863fbf215e1c14ULL;
};

template<class ContainerAllocator>
struct DataType< ::wam_srvs::GravityCompRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wam_srvs/GravityCompRequest";
  }

  static const char* value(const ::wam_srvs::GravityCompRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wam_srvs::GravityCompRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool gravity\n\
";
  }

  static const char* value(const ::wam_srvs::GravityCompRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wam_srvs::GravityCompRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gravity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GravityCompRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wam_srvs::GravityCompRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wam_srvs::GravityCompRequest_<ContainerAllocator>& v)
  {
    s << indent << "gravity: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gravity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAM_SRVS_MESSAGE_GRAVITYCOMPREQUEST_H
