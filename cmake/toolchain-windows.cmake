# Windows MSVC v143 toolchain
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

# cl.exe / link.exe expected on PATH (container entered via vsdevcmd)
# No additional root-path tweaks required

# Optimised release flags
set(CMAKE_C_FLAGS_RELEASE "/O2 /DNDEBUG /Gy")
set(CMAKE_CXX_FLAGS_RELEASE "/O2 /DNDEBUG /Gy")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE "/OPT:REF /INCREMENTAL:NO")

set(CMAKE_GENERATOR "Ninja")
