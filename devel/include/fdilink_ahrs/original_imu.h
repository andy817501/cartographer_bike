// Generated by gencpp from file fdilink_ahrs/original_imu.msg
// DO NOT EDIT!


#ifndef FDILINK_AHRS_MESSAGE_ORIGINAL_IMU_H
#define FDILINK_AHRS_MESSAGE_ORIGINAL_IMU_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace fdilink_ahrs
{
template <class ContainerAllocator>
struct original_imu_
{
  typedef original_imu_<ContainerAllocator> Type;

  original_imu_()
    : gyroscope_x(0.0)
    , gyroscope_y(0.0)
    , gyroscope_z(0.0)
    , accelerometer_x(0.0)
    , accelerometer_y(0.0)
    , accelerometer_z(0.0)  {
    }
  original_imu_(const ContainerAllocator& _alloc)
    : gyroscope_x(0.0)
    , gyroscope_y(0.0)
    , gyroscope_z(0.0)
    , accelerometer_x(0.0)
    , accelerometer_y(0.0)
    , accelerometer_z(0.0)  {
  (void)_alloc;
    }



   typedef float _gyroscope_x_type;
  _gyroscope_x_type gyroscope_x;

   typedef float _gyroscope_y_type;
  _gyroscope_y_type gyroscope_y;

   typedef float _gyroscope_z_type;
  _gyroscope_z_type gyroscope_z;

   typedef float _accelerometer_x_type;
  _accelerometer_x_type accelerometer_x;

   typedef float _accelerometer_y_type;
  _accelerometer_y_type accelerometer_y;

   typedef float _accelerometer_z_type;
  _accelerometer_z_type accelerometer_z;





  typedef boost::shared_ptr< ::fdilink_ahrs::original_imu_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fdilink_ahrs::original_imu_<ContainerAllocator> const> ConstPtr;

}; // struct original_imu_

typedef ::fdilink_ahrs::original_imu_<std::allocator<void> > original_imu;

typedef boost::shared_ptr< ::fdilink_ahrs::original_imu > original_imuPtr;
typedef boost::shared_ptr< ::fdilink_ahrs::original_imu const> original_imuConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fdilink_ahrs::original_imu_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fdilink_ahrs::original_imu_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fdilink_ahrs::original_imu_<ContainerAllocator1> & lhs, const ::fdilink_ahrs::original_imu_<ContainerAllocator2> & rhs)
{
  return lhs.gyroscope_x == rhs.gyroscope_x &&
    lhs.gyroscope_y == rhs.gyroscope_y &&
    lhs.gyroscope_z == rhs.gyroscope_z &&
    lhs.accelerometer_x == rhs.accelerometer_x &&
    lhs.accelerometer_y == rhs.accelerometer_y &&
    lhs.accelerometer_z == rhs.accelerometer_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fdilink_ahrs::original_imu_<ContainerAllocator1> & lhs, const ::fdilink_ahrs::original_imu_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fdilink_ahrs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fdilink_ahrs::original_imu_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fdilink_ahrs::original_imu_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fdilink_ahrs::original_imu_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fdilink_ahrs::original_imu_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fdilink_ahrs::original_imu_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fdilink_ahrs::original_imu_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fdilink_ahrs::original_imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "31a1f3dfbaee0ca05acbe4ee8ad9dfc7";
  }

  static const char* value(const ::fdilink_ahrs::original_imu_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x31a1f3dfbaee0ca0ULL;
  static const uint64_t static_value2 = 0x5acbe4ee8ad9dfc7ULL;
};

template<class ContainerAllocator>
struct DataType< ::fdilink_ahrs::original_imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fdilink_ahrs/original_imu";
  }

  static const char* value(const ::fdilink_ahrs::original_imu_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fdilink_ahrs::original_imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 gyroscope_x\n"
"float32 gyroscope_y\n"
"float32 gyroscope_z\n"
"float32 accelerometer_x\n"
"float32 accelerometer_y\n"
"float32 accelerometer_z\n"
;
  }

  static const char* value(const ::fdilink_ahrs::original_imu_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fdilink_ahrs::original_imu_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gyroscope_x);
      stream.next(m.gyroscope_y);
      stream.next(m.gyroscope_z);
      stream.next(m.accelerometer_x);
      stream.next(m.accelerometer_y);
      stream.next(m.accelerometer_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct original_imu_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fdilink_ahrs::original_imu_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fdilink_ahrs::original_imu_<ContainerAllocator>& v)
  {
    s << indent << "gyroscope_x: ";
    Printer<float>::stream(s, indent + "  ", v.gyroscope_x);
    s << indent << "gyroscope_y: ";
    Printer<float>::stream(s, indent + "  ", v.gyroscope_y);
    s << indent << "gyroscope_z: ";
    Printer<float>::stream(s, indent + "  ", v.gyroscope_z);
    s << indent << "accelerometer_x: ";
    Printer<float>::stream(s, indent + "  ", v.accelerometer_x);
    s << indent << "accelerometer_y: ";
    Printer<float>::stream(s, indent + "  ", v.accelerometer_y);
    s << indent << "accelerometer_z: ";
    Printer<float>::stream(s, indent + "  ", v.accelerometer_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FDILINK_AHRS_MESSAGE_ORIGINAL_IMU_H