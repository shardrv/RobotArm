// Generated by gencpp from file wam_srvs/Hold.msg
// DO NOT EDIT!


#ifndef WAM_SRVS_MESSAGE_HOLD_H
#define WAM_SRVS_MESSAGE_HOLD_H

#include <ros/service_traits.h>


#include <wam_srvs/HoldRequest.h>
#include <wam_srvs/HoldResponse.h>


namespace wam_srvs
{

struct Hold
{

typedef HoldRequest Request;
typedef HoldResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Hold
} // namespace wam_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::wam_srvs::Hold > {
  static const char* value()
  {
    return "797a139a4299aebd587b00a7001c67f7";
  }

  static const char* value(const ::wam_srvs::Hold&) { return value(); }
};

template<>
struct DataType< ::wam_srvs::Hold > {
  static const char* value()
  {
    return "wam_srvs/Hold";
  }

  static const char* value(const ::wam_srvs::Hold&) { return value(); }
};


// service_traits::MD5Sum< ::wam_srvs::HoldRequest> should match 
// service_traits::MD5Sum< ::wam_srvs::Hold > 
template<>
struct MD5Sum< ::wam_srvs::HoldRequest>
{
  static const char* value()
  {
    return MD5Sum< ::wam_srvs::Hold >::value();
  }
  static const char* value(const ::wam_srvs::HoldRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_srvs::HoldRequest> should match 
// service_traits::DataType< ::wam_srvs::Hold > 
template<>
struct DataType< ::wam_srvs::HoldRequest>
{
  static const char* value()
  {
    return DataType< ::wam_srvs::Hold >::value();
  }
  static const char* value(const ::wam_srvs::HoldRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::wam_srvs::HoldResponse> should match 
// service_traits::MD5Sum< ::wam_srvs::Hold > 
template<>
struct MD5Sum< ::wam_srvs::HoldResponse>
{
  static const char* value()
  {
    return MD5Sum< ::wam_srvs::Hold >::value();
  }
  static const char* value(const ::wam_srvs::HoldResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_srvs::HoldResponse> should match 
// service_traits::DataType< ::wam_srvs::Hold > 
template<>
struct DataType< ::wam_srvs::HoldResponse>
{
  static const char* value()
  {
    return DataType< ::wam_srvs::Hold >::value();
  }
  static const char* value(const ::wam_srvs::HoldResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WAM_SRVS_MESSAGE_HOLD_H