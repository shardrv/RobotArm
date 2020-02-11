// Generated by gencpp from file wam_srvs/JP_PID.msg
// DO NOT EDIT!


#ifndef WAM_SRVS_MESSAGE_JP_PID_H
#define WAM_SRVS_MESSAGE_JP_PID_H

#include <ros/service_traits.h>


#include <wam_srvs/JP_PIDRequest.h>
#include <wam_srvs/JP_PIDResponse.h>


namespace wam_srvs
{

struct JP_PID
{

typedef JP_PIDRequest Request;
typedef JP_PIDResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct JP_PID
} // namespace wam_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::wam_srvs::JP_PID > {
  static const char* value()
  {
    return "0db10bb243a6ebb8fbb8a7f8aee28be0";
  }

  static const char* value(const ::wam_srvs::JP_PID&) { return value(); }
};

template<>
struct DataType< ::wam_srvs::JP_PID > {
  static const char* value()
  {
    return "wam_srvs/JP_PID";
  }

  static const char* value(const ::wam_srvs::JP_PID&) { return value(); }
};


// service_traits::MD5Sum< ::wam_srvs::JP_PIDRequest> should match 
// service_traits::MD5Sum< ::wam_srvs::JP_PID > 
template<>
struct MD5Sum< ::wam_srvs::JP_PIDRequest>
{
  static const char* value()
  {
    return MD5Sum< ::wam_srvs::JP_PID >::value();
  }
  static const char* value(const ::wam_srvs::JP_PIDRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_srvs::JP_PIDRequest> should match 
// service_traits::DataType< ::wam_srvs::JP_PID > 
template<>
struct DataType< ::wam_srvs::JP_PIDRequest>
{
  static const char* value()
  {
    return DataType< ::wam_srvs::JP_PID >::value();
  }
  static const char* value(const ::wam_srvs::JP_PIDRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::wam_srvs::JP_PIDResponse> should match 
// service_traits::MD5Sum< ::wam_srvs::JP_PID > 
template<>
struct MD5Sum< ::wam_srvs::JP_PIDResponse>
{
  static const char* value()
  {
    return MD5Sum< ::wam_srvs::JP_PID >::value();
  }
  static const char* value(const ::wam_srvs::JP_PIDResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_srvs::JP_PIDResponse> should match 
// service_traits::DataType< ::wam_srvs::JP_PID > 
template<>
struct DataType< ::wam_srvs::JP_PIDResponse>
{
  static const char* value()
  {
    return DataType< ::wam_srvs::JP_PID >::value();
  }
  static const char* value(const ::wam_srvs::JP_PIDResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WAM_SRVS_MESSAGE_JP_PID_H