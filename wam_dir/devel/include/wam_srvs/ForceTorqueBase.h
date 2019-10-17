// Generated by gencpp from file wam_srvs/ForceTorqueBase.msg
// DO NOT EDIT!


#ifndef WAM_SRVS_MESSAGE_FORCETORQUEBASE_H
#define WAM_SRVS_MESSAGE_FORCETORQUEBASE_H

#include <ros/service_traits.h>


#include <wam_srvs/ForceTorqueBaseRequest.h>
#include <wam_srvs/ForceTorqueBaseResponse.h>


namespace wam_srvs
{

struct ForceTorqueBase
{

typedef ForceTorqueBaseRequest Request;
typedef ForceTorqueBaseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ForceTorqueBase
} // namespace wam_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::wam_srvs::ForceTorqueBase > {
  static const char* value()
  {
    return "f20a22c7eb9bac32ef69cf5f2e40693f";
  }

  static const char* value(const ::wam_srvs::ForceTorqueBase&) { return value(); }
};

template<>
struct DataType< ::wam_srvs::ForceTorqueBase > {
  static const char* value()
  {
    return "wam_srvs/ForceTorqueBase";
  }

  static const char* value(const ::wam_srvs::ForceTorqueBase&) { return value(); }
};


// service_traits::MD5Sum< ::wam_srvs::ForceTorqueBaseRequest> should match 
// service_traits::MD5Sum< ::wam_srvs::ForceTorqueBase > 
template<>
struct MD5Sum< ::wam_srvs::ForceTorqueBaseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::wam_srvs::ForceTorqueBase >::value();
  }
  static const char* value(const ::wam_srvs::ForceTorqueBaseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_srvs::ForceTorqueBaseRequest> should match 
// service_traits::DataType< ::wam_srvs::ForceTorqueBase > 
template<>
struct DataType< ::wam_srvs::ForceTorqueBaseRequest>
{
  static const char* value()
  {
    return DataType< ::wam_srvs::ForceTorqueBase >::value();
  }
  static const char* value(const ::wam_srvs::ForceTorqueBaseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::wam_srvs::ForceTorqueBaseResponse> should match 
// service_traits::MD5Sum< ::wam_srvs::ForceTorqueBase > 
template<>
struct MD5Sum< ::wam_srvs::ForceTorqueBaseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::wam_srvs::ForceTorqueBase >::value();
  }
  static const char* value(const ::wam_srvs::ForceTorqueBaseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_srvs::ForceTorqueBaseResponse> should match 
// service_traits::DataType< ::wam_srvs::ForceTorqueBase > 
template<>
struct DataType< ::wam_srvs::ForceTorqueBaseResponse>
{
  static const char* value()
  {
    return DataType< ::wam_srvs::ForceTorqueBase >::value();
  }
  static const char* value(const ::wam_srvs::ForceTorqueBaseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WAM_SRVS_MESSAGE_FORCETORQUEBASE_H
