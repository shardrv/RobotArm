// Generated by gencpp from file wam_msgs/RTToolInfo.msg
// DO NOT EDIT!


#ifndef WAM_MSGS_MESSAGE_RTTOOLINFO_H
#define WAM_MSGS_MESSAGE_RTTOOLINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace wam_msgs
{
template <class ContainerAllocator>
struct RTToolInfo_
{
  typedef RTToolInfo_<ContainerAllocator> Type;

  RTToolInfo_()
    : velocity()
    , position()  {
      velocity.assign(0.0);

      position.assign(0.0);
  }
  RTToolInfo_(const ContainerAllocator& _alloc)
    : velocity()
    , position()  {
  (void)_alloc;
      velocity.assign(0.0);

      position.assign(0.0);
  }



   typedef boost::array<float, 3>  _velocity_type;
  _velocity_type velocity;

   typedef boost::array<float, 3>  _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::wam_msgs::RTToolInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wam_msgs::RTToolInfo_<ContainerAllocator> const> ConstPtr;

}; // struct RTToolInfo_

typedef ::wam_msgs::RTToolInfo_<std::allocator<void> > RTToolInfo;

typedef boost::shared_ptr< ::wam_msgs::RTToolInfo > RTToolInfoPtr;
typedef boost::shared_ptr< ::wam_msgs::RTToolInfo const> RTToolInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wam_msgs::RTToolInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wam_msgs::RTToolInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wam_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'wam_msgs': ['/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wam_msgs::RTToolInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wam_msgs::RTToolInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_msgs::RTToolInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_msgs::RTToolInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_msgs::RTToolInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_msgs::RTToolInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wam_msgs::RTToolInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b526edc7ba53dd034054d98a4c063fce";
  }

  static const char* value(const ::wam_msgs::RTToolInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb526edc7ba53dd03ULL;
  static const uint64_t static_value2 = 0x4054d98a4c063fceULL;
};

template<class ContainerAllocator>
struct DataType< ::wam_msgs::RTToolInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wam_msgs/RTToolInfo";
  }

  static const char* value(const ::wam_msgs::RTToolInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wam_msgs::RTToolInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[3] velocity\n\
float32[3] position\n\
";
  }

  static const char* value(const ::wam_msgs::RTToolInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wam_msgs::RTToolInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.velocity);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RTToolInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wam_msgs::RTToolInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wam_msgs::RTToolInfo_<ContainerAllocator>& v)
  {
    s << indent << "velocity[]" << std::endl;
    for (size_t i = 0; i < v.velocity.size(); ++i)
    {
      s << indent << "  velocity[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.velocity[i]);
    }
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.position[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAM_MSGS_MESSAGE_RTTOOLINFO_H
