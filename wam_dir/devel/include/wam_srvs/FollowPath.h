// Generated by gencpp from file wam_srvs/FollowPath.msg
// DO NOT EDIT!


#ifndef WAM_SRVS_MESSAGE_FOLLOWPATH_H
#define WAM_SRVS_MESSAGE_FOLLOWPATH_H

#include <ros/service_traits.h>


#include <wam_srvs/FollowPathRequest.h>
#include <wam_srvs/FollowPathResponse.h>


namespace wam_srvs
{

struct FollowPath
{

typedef FollowPathRequest Request;
typedef FollowPathResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FollowPath
} // namespace wam_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::wam_srvs::FollowPath > {
  static const char* value()
  {
    return "d84f5b474d984f3bb9b08180eaffe23c";
  }

  static const char* value(const ::wam_srvs::FollowPath&) { return value(); }
};

template<>
struct DataType< ::wam_srvs::FollowPath > {
  static const char* value()
  {
    return "wam_srvs/FollowPath";
  }

  static const char* value(const ::wam_srvs::FollowPath&) { return value(); }
};


// service_traits::MD5Sum< ::wam_srvs::FollowPathRequest> should match 
// service_traits::MD5Sum< ::wam_srvs::FollowPath > 
template<>
struct MD5Sum< ::wam_srvs::FollowPathRequest>
{
  static const char* value()
  {
    return MD5Sum< ::wam_srvs::FollowPath >::value();
  }
  static const char* value(const ::wam_srvs::FollowPathRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_srvs::FollowPathRequest> should match 
// service_traits::DataType< ::wam_srvs::FollowPath > 
template<>
struct DataType< ::wam_srvs::FollowPathRequest>
{
  static const char* value()
  {
    return DataType< ::wam_srvs::FollowPath >::value();
  }
  static const char* value(const ::wam_srvs::FollowPathRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::wam_srvs::FollowPathResponse> should match 
// service_traits::MD5Sum< ::wam_srvs::FollowPath > 
template<>
struct MD5Sum< ::wam_srvs::FollowPathResponse>
{
  static const char* value()
  {
    return MD5Sum< ::wam_srvs::FollowPath >::value();
  }
  static const char* value(const ::wam_srvs::FollowPathResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_srvs::FollowPathResponse> should match 
// service_traits::DataType< ::wam_srvs::FollowPath > 
template<>
struct DataType< ::wam_srvs::FollowPathResponse>
{
  static const char* value()
  {
    return DataType< ::wam_srvs::FollowPath >::value();
  }
  static const char* value(const ::wam_srvs::FollowPathResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WAM_SRVS_MESSAGE_FOLLOWPATH_H
