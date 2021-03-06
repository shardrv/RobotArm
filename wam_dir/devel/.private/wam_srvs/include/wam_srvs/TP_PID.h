// Generated by gencpp from file wam_srvs/TP_PID.msg
// DO NOT EDIT!


#ifndef WAM_SRVS_MESSAGE_TP_PID_H
#define WAM_SRVS_MESSAGE_TP_PID_H

#include <ros/service_traits.h>


#include <wam_srvs/TP_PIDRequest.h>
#include <wam_srvs/TP_PIDResponse.h>


namespace wam_srvs
{

struct TP_PID
{

typedef TP_PIDRequest Request;
typedef TP_PIDResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TP_PID
} // namespace wam_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::wam_srvs::TP_PID > {
  static const char* value()
  {
    return "8dfae169c05c8647d6140e2a6c279a75";
  }

  static const char* value(const ::wam_srvs::TP_PID&) { return value(); }
};

template<>
struct DataType< ::wam_srvs::TP_PID > {
  static const char* value()
  {
    return "wam_srvs/TP_PID";
  }

  static const char* value(const ::wam_srvs::TP_PID&) { return value(); }
};


// service_traits::MD5Sum< ::wam_srvs::TP_PIDRequest> should match 
// service_traits::MD5Sum< ::wam_srvs::TP_PID > 
template<>
struct MD5Sum< ::wam_srvs::TP_PIDRequest>
{
  static const char* value()
  {
    return MD5Sum< ::wam_srvs::TP_PID >::value();
  }
  static const char* value(const ::wam_srvs::TP_PIDRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_srvs::TP_PIDRequest> should match 
// service_traits::DataType< ::wam_srvs::TP_PID > 
template<>
struct DataType< ::wam_srvs::TP_PIDRequest>
{
  static const char* value()
  {
    return DataType< ::wam_srvs::TP_PID >::value();
  }
  static const char* value(const ::wam_srvs::TP_PIDRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::wam_srvs::TP_PIDResponse> should match 
// service_traits::MD5Sum< ::wam_srvs::TP_PID > 
template<>
struct MD5Sum< ::wam_srvs::TP_PIDResponse>
{
  static const char* value()
  {
    return MD5Sum< ::wam_srvs::TP_PID >::value();
  }
  static const char* value(const ::wam_srvs::TP_PIDResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_srvs::TP_PIDResponse> should match 
// service_traits::DataType< ::wam_srvs::TP_PID > 
template<>
struct DataType< ::wam_srvs::TP_PIDResponse>
{
  static const char* value()
  {
    return DataType< ::wam_srvs::TP_PID >::value();
  }
  static const char* value(const ::wam_srvs::TP_PIDResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WAM_SRVS_MESSAGE_TP_PID_H
