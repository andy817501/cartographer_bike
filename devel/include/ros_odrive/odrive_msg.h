// Generated by gencpp from file ros_odrive/odrive_msg.msg
// DO NOT EDIT!


#ifndef ROS_ODRIVE_MESSAGE_ODRIVE_MSG_H
#define ROS_ODRIVE_MESSAGE_ODRIVE_MSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_odrive
{
template <class ContainerAllocator>
struct odrive_msg_
{
  typedef odrive_msg_<ContainerAllocator> Type;

  odrive_msg_()
    : target(0)
    , vbus(0.0)
    , error0(0)
    , state0(0)
    , vel0(0.0)
    , pos0(0.0)
    , curr0B(0.0)
    , curr0C(0.0)
    , temp0(0.0)  {
    }
  odrive_msg_(const ContainerAllocator& _alloc)
    : target(0)
    , vbus(0.0)
    , error0(0)
    , state0(0)
    , vel0(0.0)
    , pos0(0.0)
    , curr0B(0.0)
    , curr0C(0.0)
    , temp0(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _target_type;
  _target_type target;

   typedef float _vbus_type;
  _vbus_type vbus;

   typedef int32_t _error0_type;
  _error0_type error0;

   typedef int32_t _state0_type;
  _state0_type state0;

   typedef float _vel0_type;
  _vel0_type vel0;

   typedef float _pos0_type;
  _pos0_type pos0;

   typedef float _curr0B_type;
  _curr0B_type curr0B;

   typedef float _curr0C_type;
  _curr0C_type curr0C;

   typedef float _temp0_type;
  _temp0_type temp0;





  typedef boost::shared_ptr< ::ros_odrive::odrive_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_odrive::odrive_msg_<ContainerAllocator> const> ConstPtr;

}; // struct odrive_msg_

typedef ::ros_odrive::odrive_msg_<std::allocator<void> > odrive_msg;

typedef boost::shared_ptr< ::ros_odrive::odrive_msg > odrive_msgPtr;
typedef boost::shared_ptr< ::ros_odrive::odrive_msg const> odrive_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_odrive::odrive_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_odrive::odrive_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_odrive::odrive_msg_<ContainerAllocator1> & lhs, const ::ros_odrive::odrive_msg_<ContainerAllocator2> & rhs)
{
  return lhs.target == rhs.target &&
    lhs.vbus == rhs.vbus &&
    lhs.error0 == rhs.error0 &&
    lhs.state0 == rhs.state0 &&
    lhs.vel0 == rhs.vel0 &&
    lhs.pos0 == rhs.pos0 &&
    lhs.curr0B == rhs.curr0B &&
    lhs.curr0C == rhs.curr0C &&
    lhs.temp0 == rhs.temp0;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_odrive::odrive_msg_<ContainerAllocator1> & lhs, const ::ros_odrive::odrive_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_odrive

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_odrive::odrive_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_odrive::odrive_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_odrive::odrive_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_odrive::odrive_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_odrive::odrive_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_odrive::odrive_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_odrive::odrive_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86f9cf508f5d40f79760e11abc87c20f";
  }

  static const char* value(const ::ros_odrive::odrive_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86f9cf508f5d40f7ULL;
  static const uint64_t static_value2 = 0x9760e11abc87c20fULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_odrive::odrive_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_odrive/odrive_msg";
  }

  static const char* value(const ::ros_odrive::odrive_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_odrive::odrive_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Header header    # ROS Message headaer\n"
"\n"
"uint8 target      # Target\n"
"\n"
"float32 vbus      # Bus voltage\n"
"\n"
"int32 error0      # Axis 0 error\n"
"int32 state0      # Axis 0 state\n"
"float32 vel0      # Axis 0 velocity \n"
"float32 pos0      # Axis 0 encoder position\n"
"float32 curr0B    # Axis 0 motor channel B current\n"
"float32 curr0C    # Axis 0 motor channel C current\n"
"float32 temp0     # Axis 0 invertr temperature\n"
"\n"
"\n"
;
  }

  static const char* value(const ::ros_odrive::odrive_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_odrive::odrive_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target);
      stream.next(m.vbus);
      stream.next(m.error0);
      stream.next(m.state0);
      stream.next(m.vel0);
      stream.next(m.pos0);
      stream.next(m.curr0B);
      stream.next(m.curr0C);
      stream.next(m.temp0);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct odrive_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_odrive::odrive_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_odrive::odrive_msg_<ContainerAllocator>& v)
  {
    s << indent << "target: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.target);
    s << indent << "vbus: ";
    Printer<float>::stream(s, indent + "  ", v.vbus);
    s << indent << "error0: ";
    Printer<int32_t>::stream(s, indent + "  ", v.error0);
    s << indent << "state0: ";
    Printer<int32_t>::stream(s, indent + "  ", v.state0);
    s << indent << "vel0: ";
    Printer<float>::stream(s, indent + "  ", v.vel0);
    s << indent << "pos0: ";
    Printer<float>::stream(s, indent + "  ", v.pos0);
    s << indent << "curr0B: ";
    Printer<float>::stream(s, indent + "  ", v.curr0B);
    s << indent << "curr0C: ";
    Printer<float>::stream(s, indent + "  ", v.curr0C);
    s << indent << "temp0: ";
    Printer<float>::stream(s, indent + "  ", v.temp0);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_ODRIVE_MESSAGE_ODRIVE_MSG_H
