// Generated by gencpp from file wam_msgs/RTOrtn.msg
// DO NOT EDIT!


#ifndef WAM_MSGS_MESSAGE_RTORTN_H
#define WAM_MSGS_MESSAGE_RTORTN_H


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
struct RTOrtn_
{
  typedef RTOrtn_<ContainerAllocator> Type;

  RTOrtn_()
    : orientation()
    , kp()
    , kd()
    , change_gains(false)  {
      orientation.assign(0.0);

      kp.assign(0.0);

      kd.assign(0.0);
  }
  RTOrtn_(const ContainerAllocator& _alloc)
    : orientation()
    , kp()
    , kd()
    , change_gains(false)  {
  (void)_alloc;
      orientation.assign(0.0);

      kp.assign(0.0);

      kd.assign(0.0);
  }



   typedef boost::array<float, 4>  _orientation_type;
  _orientation_type orientation;

   typedef boost::array<float, 3>  _kp_type;
  _kp_type kp;

   typedef boost::array<float, 3>  _kd_type;
  _kd_type kd;

   typedef uint8_t _change_gains_type;
  _change_gains_type change_gains;





  typedef boost::shared_ptr< ::wam_msgs::RTOrtn_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wam_msgs::RTOrtn_<ContainerAllocator> const> ConstPtr;

}; // struct RTOrtn_

typedef ::wam_msgs::RTOrtn_<std::allocator<void> > RTOrtn;

typedef boost::shared_ptr< ::wam_msgs::RTOrtn > RTOrtnPtr;
typedef boost::shared_ptr< ::wam_msgs::RTOrtn const> RTOrtnConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wam_msgs::RTOrtn_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wam_msgs::RTOrtn_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wam_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'wam_msgs': ['/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wam_msgs::RTOrtn_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wam_msgs::RTOrtn_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_msgs::RTOrtn_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_msgs::RTOrtn_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_msgs::RTOrtn_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_msgs::RTOrtn_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wam_msgs::RTOrtn_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2e3f1019db9e6ee5ee0fb74a74917cbb";
  }

  static const char* value(const ::wam_msgs::RTOrtn_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2e3f1019db9e6ee5ULL;
  static const uint64_t static_value2 = 0xee0fb74a74917cbbULL;
};

template<class ContainerAllocator>
struct DataType< ::wam_msgs::RTOrtn_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wam_msgs/RTOrtn";
  }

  static const char* value(const ::wam_msgs::RTOrtn_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wam_msgs::RTOrtn_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[4] orientation\n"
"float32[3] kp\n"
"float32[3] kd\n"
"bool change_gains\n"
;
  }

  static const char* value(const ::wam_msgs::RTOrtn_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wam_msgs::RTOrtn_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.orientation);
      stream.next(m.kp);
      stream.next(m.kd);
      stream.next(m.change_gains);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RTOrtn_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wam_msgs::RTOrtn_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wam_msgs::RTOrtn_<ContainerAllocator>& v)
  {
    s << indent << "orientation[]" << std::endl;
    for (size_t i = 0; i < v.orientation.size(); ++i)
    {
      s << indent << "  orientation[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.orientation[i]);
    }
    s << indent << "kp[]" << std::endl;
    for (size_t i = 0; i < v.kp.size(); ++i)
    {
      s << indent << "  kp[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.kp[i]);
    }
    s << indent << "kd[]" << std::endl;
    for (size_t i = 0; i < v.kd.size(); ++i)
    {
      s << indent << "  kd[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.kd[i]);
    }
    s << indent << "change_gains: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.change_gains);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAM_MSGS_MESSAGE_RTORTN_H