// Generated by gencpp from file ros_odrive/odrive_ctrl.msg
// DO NOT EDIT!


#ifndef ROS_ODRIVE_MESSAGE_ODRIVE_CTRL_H
#define ROS_ODRIVE_MESSAGE_ODRIVE_CTRL_H


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
struct odrive_ctrl_
{
  typedef odrive_ctrl_<ContainerAllocator> Type;

  odrive_ctrl_()
    : target(0)
    , command(0)
    , axis(0)
    , fval(0.0)
    , fval2(0.0)  {
    }
  odrive_ctrl_(const ContainerAllocator& _alloc)
    : target(0)
    , command(0)
    , axis(0)
    , fval(0.0)
    , fval2(0.0)  {
  (void)_alloc;
    }



   typedef int8_t _target_type;
  _target_type target;

   typedef int32_t _command_type;
  _command_type command;

   typedef uint8_t _axis_type;
  _axis_type axis;

   typedef float _fval_type;
  _fval_type fval;

   typedef float _fval2_type;
  _fval2_type fval2;





  typedef boost::shared_ptr< ::ros_odrive::odrive_ctrl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_odrive::odrive_ctrl_<ContainerAllocator> const> ConstPtr;

}; // struct odrive_ctrl_

typedef ::ros_odrive::odrive_ctrl_<std::allocator<void> > odrive_ctrl;

typedef boost::shared_ptr< ::ros_odrive::odrive_ctrl > odrive_ctrlPtr;
typedef boost::shared_ptr< ::ros_odrive::odrive_ctrl const> odrive_ctrlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_odrive::odrive_ctrl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_odrive::odrive_ctrl_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_odrive::odrive_ctrl_<ContainerAllocator1> & lhs, const ::ros_odrive::odrive_ctrl_<ContainerAllocator2> & rhs)
{
  return lhs.target == rhs.target &&
    lhs.command == rhs.command &&
    lhs.axis == rhs.axis &&
    lhs.fval == rhs.fval &&
    lhs.fval2 == rhs.fval2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_odrive::odrive_ctrl_<ContainerAllocator1> & lhs, const ::ros_odrive::odrive_ctrl_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_odrive

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_odrive::odrive_ctrl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_odrive::odrive_ctrl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_odrive::odrive_ctrl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_odrive::odrive_ctrl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_odrive::odrive_ctrl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_odrive::odrive_ctrl_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_odrive::odrive_ctrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "11157a5f66bebeef0ff837893ae31cd8";
  }

  static const char* value(const ::ros_odrive::odrive_ctrl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x11157a5f66bebeefULL;
  static const uint64_t static_value2 = 0x0ff837893ae31cd8ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_odrive::odrive_ctrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_odrive/odrive_ctrl";
  }

  static const char* value(const ::ros_odrive::odrive_ctrl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_odrive::odrive_ctrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Header header    # ROS Message headaer\n"
"\n"
"int8 target     # target\n"
"\n"
"int32 command   # Command ID\n"
"uint8 axis      # Axis number\n"
"float32 fval    # Float value \n"
"float32 fval2   # Float second value (in case of dual axis command)\n"
"\n"
;
  }

  static const char* value(const ::ros_odrive::odrive_ctrl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_odrive::odrive_ctrl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target);
      stream.next(m.command);
      stream.next(m.axis);
      stream.next(m.fval);
      stream.next(m.fval2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct odrive_ctrl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_odrive::odrive_ctrl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_odrive::odrive_ctrl_<ContainerAllocator>& v)
  {
    s << indent << "target: ";
    Printer<int8_t>::stream(s, indent + "  ", v.target);
    s << indent << "command: ";
    Printer<int32_t>::stream(s, indent + "  ", v.command);
    s << indent << "axis: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.axis);
    s << indent << "fval: ";
    Printer<float>::stream(s, indent + "  ", v.fval);
    s << indent << "fval2: ";
    Printer<float>::stream(s, indent + "  ", v.fval2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_ODRIVE_MESSAGE_ODRIVE_CTRL_H
