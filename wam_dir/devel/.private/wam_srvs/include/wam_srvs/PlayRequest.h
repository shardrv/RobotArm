// Generated by gencpp from file wam_srvs/PlayRequest.msg
// DO NOT EDIT!


#ifndef WAM_SRVS_MESSAGE_PLAYREQUEST_H
#define WAM_SRVS_MESSAGE_PLAYREQUEST_H


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
struct PlayRequest_
{
  typedef PlayRequest_<ContainerAllocator> Type;

  PlayRequest_()
    : path()  {
    }
  PlayRequest_(const ContainerAllocator& _alloc)
    : path(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _path_type;
  _path_type path;





  typedef boost::shared_ptr< ::wam_srvs::PlayRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wam_srvs::PlayRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PlayRequest_

typedef ::wam_srvs::PlayRequest_<std::allocator<void> > PlayRequest;

typedef boost::shared_ptr< ::wam_srvs::PlayRequest > PlayRequestPtr;
typedef boost::shared_ptr< ::wam_srvs::PlayRequest const> PlayRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wam_srvs::PlayRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wam_srvs::PlayRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wam_srvs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wam_srvs::PlayRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wam_srvs::PlayRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_srvs::PlayRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_srvs::PlayRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_srvs::PlayRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_srvs::PlayRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wam_srvs::PlayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1d00cd540af97efeb6b1589112fab63e";
  }

  static const char* value(const ::wam_srvs::PlayRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1d00cd540af97efeULL;
  static const uint64_t static_value2 = 0xb6b1589112fab63eULL;
};

template<class ContainerAllocator>
struct DataType< ::wam_srvs::PlayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wam_srvs/PlayRequest";
  }

  static const char* value(const ::wam_srvs::PlayRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wam_srvs::PlayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string path\n"
;
  }

  static const char* value(const ::wam_srvs::PlayRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wam_srvs::PlayRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlayRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wam_srvs::PlayRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wam_srvs::PlayRequest_<ContainerAllocator>& v)
  {
    s << indent << "path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAM_SRVS_MESSAGE_PLAYREQUEST_H
