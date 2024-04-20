// Generated by gencpp from file can_communication/CAN_srvResponse.msg
// DO NOT EDIT!


#ifndef CAN_COMMUNICATION_MESSAGE_CAN_SRVRESPONSE_H
#define CAN_COMMUNICATION_MESSAGE_CAN_SRVRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace can_communication
{
template <class ContainerAllocator>
struct CAN_srvResponse_
{
  typedef CAN_srvResponse_<ContainerAllocator> Type;

  CAN_srvResponse_()
    : success(false)
    , message()  {
    }
  CAN_srvResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::can_communication::CAN_srvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::can_communication::CAN_srvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CAN_srvResponse_

typedef ::can_communication::CAN_srvResponse_<std::allocator<void> > CAN_srvResponse;

typedef boost::shared_ptr< ::can_communication::CAN_srvResponse > CAN_srvResponsePtr;
typedef boost::shared_ptr< ::can_communication::CAN_srvResponse const> CAN_srvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::can_communication::CAN_srvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::can_communication::CAN_srvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::can_communication::CAN_srvResponse_<ContainerAllocator1> & lhs, const ::can_communication::CAN_srvResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::can_communication::CAN_srvResponse_<ContainerAllocator1> & lhs, const ::can_communication::CAN_srvResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace can_communication

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::can_communication::CAN_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_communication::CAN_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_communication::CAN_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_communication::CAN_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_communication::CAN_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_communication::CAN_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::can_communication::CAN_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::can_communication::CAN_srvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::can_communication::CAN_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "can_communication/CAN_srvResponse";
  }

  static const char* value(const ::can_communication::CAN_srvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::can_communication::CAN_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success   # indicate successful run of triggered service\n"
"string message # informational, e.g. for error messages\n"
;
  }

  static const char* value(const ::can_communication::CAN_srvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::can_communication::CAN_srvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CAN_srvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::can_communication::CAN_srvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::can_communication::CAN_srvResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAN_COMMUNICATION_MESSAGE_CAN_SRVRESPONSE_H
