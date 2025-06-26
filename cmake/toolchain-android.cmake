# Android NDK r26b (Clang 17)
set(CMAKE_SYSTEM_NAME Android)

# Paths exported by docker/android/android-env.sh
set(CMAKE_ANDROID_NDK "$ENV{ANDROID_NDK_HOME}" CACHE PATH "")
set(CMAKE_ANDROID_SDK "$ENV{ANDROID_SDK_ROOT}" CACHE PATH "")

# Allow caller to override ABI & API level
if(NOT ANDROID_ABI)
  set(ANDROID_ABI arm64-v8a)
endif()
if(NOT ANDROID_NATIVE_API_LEVEL)
  set(ANDROID_NATIVE_API_LEVEL 24)
endif()

set(CMAKE_ANDROID_ARCH_ABI ${ANDROID_ABI})
set(CMAKE_SYSTEM_VERSION ${ANDROID_NATIVE_API_LEVEL})
set(CMAKE_ANDROID_STL_TYPE c++_static)

# Always use Ninja generator inside container
set(CMAKE_GENERATOR "Ninja")
