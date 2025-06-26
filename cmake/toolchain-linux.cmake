# Generic GNU/Linux cross toolchain
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR "$ENV{TARGET_TRIPLET}")   # x86_64 / aarch64 / armv7l

# Use system GCC inside container
set(CMAKE_C_COMPILER gcc)
set(CMAKE_CXX_COMPILER g++)

# Optimised release flags
set(CMAKE_C_FLAGS_RELEASE "-O3 -ffunction-sections -fdata-sections")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -ffunction-sections -fdata-sections")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE "-Wl,--gc-sections -s")

# Limit search path to container sysroot
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
