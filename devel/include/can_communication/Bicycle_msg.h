// Generated by gencpp from file can_communication/Bicycle_msg.msg
// DO NOT EDIT!


#ifndef CAN_COMMUNICATION_MESSAGE_BICYCLE_MSG_H
#define CAN_COMMUNICATION_MESSAGE_BICYCLE_MSG_H


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
struct Bicycle_msg_
{
  typedef Bicycle_msg_<ContainerAllocator> Type;

  Bicycle_msg_()
    : Servo_Direction(0.0)
    , Bicycle_voltage(0.0)
    , Motor_Roll(0.0)
    , Motor_Roll_Gyro(0.0)
    , Motor_duty(0.0)
    , Motor_rpm(0)
    , Device_ID(0)  {
    }
  Bicycle_msg_(const ContainerAllocator& _alloc)
    : Servo_Direction(0.0)
    , Bicycle_voltage(0.0)
    , Motor_Roll(0.0)
    , Motor_Roll_Gyro(0.0)
    , Motor_duty(0.0)
    , Motor_rpm(0)
    , Device_ID(0)  {
  (void)_alloc;
    }



   typedef float _Servo_Direction_type;
  _Servo_Direction_type Servo_Direction;

   typedef float _Bicycle_voltage_type;
  _Bicycle_voltage_type Bicycle_voltage;

   typedef float _Motor_Roll_type;
  _Motor_Roll_type Motor_Roll;

   typedef float _Motor_Roll_Gyro_type;
  _Motor_Roll_Gyro_type Motor_Roll_Gyro;

   typedef float _Motor_duty_type;
  _Motor_duty_type Motor_duty;

   typedef int32_t _Motor_rpm_type;
  _Motor_rpm_type Motor_rpm;

   typedef int16_t _Device_ID_type;
  _Device_ID_type Device_ID;





  typedef boost::shared_ptr< ::can_communication::Bicycle_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::can_communication::Bicycle_msg_<ContainerAllocator> const> ConstPtr;

}; // struct Bicycle_msg_

typedef ::can_communication::Bicycle_msg_<std::allocator<void> > Bicycle_msg;

typedef boost::shared_ptr< ::can_communication::Bicycle_msg > Bicycle_msgPtr;
typedef boost::shared_ptr< ::can_communication::Bicycle_msg const> Bicycle_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::can_communication::Bicycle_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::can_communication::Bicycle_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::can_communication::Bicycle_msg_<ContainerAllocator1> & lhs, const ::can_communication::Bicycle_msg_<ContainerAllocator2> & rhs)
{
  return lhs.Servo_Direction == rhs.Servo_Direction &&
    lhs.Bicycle_voltage == rhs.Bicycle_voltage &&
    lhs.Motor_Roll == rhs.Motor_Roll &&
    lhs.Motor_Roll_Gyro == rhs.Motor_Roll_Gyro &&
    lhs.Motor_duty == rhs.Motor_duty &&
    lhs.Motor_rpm == rhs.Motor_rpm &&
    lhs.Device_ID == rhs.Device_ID;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::can_communication::Bicycle_msg_<ContainerAllocator1> & lhs, const ::can_communication::Bicycle_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace can_communication

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::can_communication::Bicycle_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_communication::Bicycle_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_communication::Bicycle_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_communication::Bicycle_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_communication::Bicycle_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_communication::Bicycle_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::can_communication::Bicycle_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8bec6b5b94fc5c7677fbd09497b317d9";
  }

  static const char* value(const ::can_communication::Bicycle_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8bec6b5b94fc5c76ULL;
  static const uint64_t static_value2 = 0x77fbd09497b317d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::can_communication::Bicycle_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "can_communication/Bicycle_msg";
  }

  static const char* value(const ::can_communication::Bicycle_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::can_communication::Bicycle_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 Servo_Direction\n"
"float32 Bicycle_voltage\n"
"float32 Motor_Roll\n"
"float32 Motor_Roll_Gyro\n"
"float32 Motor_duty\n"
"int32   Motor_rpm\n"
"int16   Device_ID\n"
;
  }

  static const char* value(const ::can_communication::Bicycle_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::can_communication::Bicycle_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Servo_Direction);
      stream.next(m.Bicycle_voltage);
      stream.next(m.Motor_Roll);
      stream.next(m.Motor_Roll_Gyro);
      stream.next(m.Motor_duty);
      stream.next(m.Motor_rpm);
      stream.next(m.Device_ID);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Bicycle_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::can_communication::Bicycle_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::can_communication::Bicycle_msg_<ContainerAllocator>& v)
  {
    s << indent << "Servo_Direction: ";
    Printer<float>::stream(s, indent + "  ", v.Servo_Direction);
    s << indent << "Bicycle_voltage: ";
    Printer<float>::stream(s, indent + "  ", v.Bicycle_voltage);
    s << indent << "Motor_Roll: ";
    Printer<float>::stream(s, indent + "  ", v.Motor_Roll);
    s << indent << "Motor_Roll_Gyro: ";
    Printer<float>::stream(s, indent + "  ", v.Motor_Roll_Gyro);
    s << indent << "Motor_duty: ";
    Printer<float>::stream(s, indent + "  ", v.Motor_duty);
    s << indent << "Motor_rpm: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Motor_rpm);
    s << indent << "Device_ID: ";
    Printer<int16_t>::stream(s, indent + "  ", v.Device_ID);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAN_COMMUNICATION_MESSAGE_BICYCLE_MSG_H
