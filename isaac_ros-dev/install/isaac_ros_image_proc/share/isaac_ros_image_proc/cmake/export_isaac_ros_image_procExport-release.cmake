#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "isaac_ros_image_proc::gxf_tensorops" for configuration "Release"
set_property(TARGET isaac_ros_image_proc::gxf_tensorops APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(isaac_ros_image_proc::gxf_tensorops PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "GXF::cuda;GXF::multimedia;vpi"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgxf_tensorops.so"
  IMPORTED_SONAME_RELEASE "libgxf_tensorops.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS isaac_ros_image_proc::gxf_tensorops )
list(APPEND _IMPORT_CHECK_FILES_FOR_isaac_ros_image_proc::gxf_tensorops "${_IMPORT_PREFIX}/lib/libgxf_tensorops.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
