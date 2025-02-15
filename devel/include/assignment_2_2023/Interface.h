// Generated by gencpp from file assignment_2_2023/Interface.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_2_2023_MESSAGE_INTERFACE_H
#define ASSIGNMENT_2_2023_MESSAGE_INTERFACE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignment_2_2023
{
template <class ContainerAllocator>
struct Interface_
{
  typedef Interface_<ContainerAllocator> Type;

  Interface_()
    : sel(0)
    , x(0)
    , y(0)  {
    }
  Interface_(const ContainerAllocator& _alloc)
    : sel(0)
    , x(0)
    , y(0)  {
  (void)_alloc;
    }



   typedef int32_t _sel_type;
  _sel_type sel;

   typedef int32_t _x_type;
  _x_type x;

   typedef int32_t _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::assignment_2_2023::Interface_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment_2_2023::Interface_<ContainerAllocator> const> ConstPtr;

}; // struct Interface_

typedef ::assignment_2_2023::Interface_<std::allocator<void> > Interface;

typedef boost::shared_ptr< ::assignment_2_2023::Interface > InterfacePtr;
typedef boost::shared_ptr< ::assignment_2_2023::Interface const> InterfaceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment_2_2023::Interface_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment_2_2023::Interface_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::assignment_2_2023::Interface_<ContainerAllocator1> & lhs, const ::assignment_2_2023::Interface_<ContainerAllocator2> & rhs)
{
  return lhs.sel == rhs.sel &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::assignment_2_2023::Interface_<ContainerAllocator1> & lhs, const ::assignment_2_2023::Interface_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace assignment_2_2023

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2023::Interface_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2023::Interface_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2023::Interface_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2023::Interface_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2023::Interface_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2023::Interface_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment_2_2023::Interface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "effc2b1bd3a9fb5891fcabf8243ca2e8";
  }

  static const char* value(const ::assignment_2_2023::Interface_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeffc2b1bd3a9fb58ULL;
  static const uint64_t static_value2 = 0x91fcabf8243ca2e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment_2_2023::Interface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment_2_2023/Interface";
  }

  static const char* value(const ::assignment_2_2023::Interface_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment_2_2023::Interface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message used by the interface \n"
"\n"
"int32 sel\n"
"int32 x\n"
"int32 y\n"
;
  }

  static const char* value(const ::assignment_2_2023::Interface_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment_2_2023::Interface_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sel);
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Interface_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment_2_2023::Interface_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assignment_2_2023::Interface_<ContainerAllocator>& v)
  {
    s << indent << "sel: ";
    Printer<int32_t>::stream(s, indent + "  ", v.sel);
    s << indent << "x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT_2_2023_MESSAGE_INTERFACE_H
