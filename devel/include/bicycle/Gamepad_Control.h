// Generated by gencpp from file bicycle/Gamepad_Control.msg
// DO NOT EDIT!


#ifndef BICYCLE_MESSAGE_GAMEPAD_CONTROL_H
#define BICYCLE_MESSAGE_GAMEPAD_CONTROL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bicycle
{
template <class ContainerAllocator>
struct Gamepad_Control_
{
  typedef Gamepad_Control_<ContainerAllocator> Type;

  Gamepad_Control_()
    : LeftHatX(0)
    , LeftHatY(0)  {
    }
  Gamepad_Control_(const ContainerAllocator& _alloc)
    : LeftHatX(0)
    , LeftHatY(0)  {
  (void)_alloc;
    }



   typedef int32_t _LeftHatX_type;
  _LeftHatX_type LeftHatX;

   typedef int32_t _LeftHatY_type;
  _LeftHatY_type LeftHatY;





  typedef boost::shared_ptr< ::bicycle::Gamepad_Control_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bicycle::Gamepad_Control_<ContainerAllocator> const> ConstPtr;

}; // struct Gamepad_Control_

typedef ::bicycle::Gamepad_Control_<std::allocator<void> > Gamepad_Control;

typedef boost::shared_ptr< ::bicycle::Gamepad_Control > Gamepad_ControlPtr;
typedef boost::shared_ptr< ::bicycle::Gamepad_Control const> Gamepad_ControlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bicycle::Gamepad_Control_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bicycle::Gamepad_Control_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bicycle::Gamepad_Control_<ContainerAllocator1> & lhs, const ::bicycle::Gamepad_Control_<ContainerAllocator2> & rhs)
{
  return lhs.LeftHatX == rhs.LeftHatX &&
    lhs.LeftHatY == rhs.LeftHatY;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bicycle::Gamepad_Control_<ContainerAllocator1> & lhs, const ::bicycle::Gamepad_Control_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bicycle

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bicycle::Gamepad_Control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bicycle::Gamepad_Control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bicycle::Gamepad_Control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bicycle::Gamepad_Control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bicycle::Gamepad_Control_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bicycle::Gamepad_Control_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bicycle::Gamepad_Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "10cad8b4f3fb64b90750ff920467060e";
  }

  static const char* value(const ::bicycle::Gamepad_Control_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x10cad8b4f3fb64b9ULL;
  static const uint64_t static_value2 = 0x0750ff920467060eULL;
};

template<class ContainerAllocator>
struct DataType< ::bicycle::Gamepad_Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bicycle/Gamepad_Control";
  }

  static const char* value(const ::bicycle::Gamepad_Control_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bicycle::Gamepad_Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 LeftHatX\n"
"int32 LeftHatY\n"
;
  }

  static const char* value(const ::bicycle::Gamepad_Control_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bicycle::Gamepad_Control_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.LeftHatX);
      stream.next(m.LeftHatY);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Gamepad_Control_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bicycle::Gamepad_Control_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bicycle::Gamepad_Control_<ContainerAllocator>& v)
  {
    s << indent << "LeftHatX: ";
    Printer<int32_t>::stream(s, indent + "  ", v.LeftHatX);
    s << indent << "LeftHatY: ";
    Printer<int32_t>::stream(s, indent + "  ", v.LeftHatY);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BICYCLE_MESSAGE_GAMEPAD_CONTROL_H
