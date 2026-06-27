cmake_minimum_required(VERSION 3.10)
project(winXPlayer)

set(CMAKE_CXX_STANDARD 11)
add_definitions(-DLIN32 -D__linux__ -DRENDERING)

# Find X11 and OpenGL
find_package(X11 REQUIRED)
find_package(OpenGL REQUIRED)

# U3D Modern Directory
set(U3D_MODERN_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../../../../u3d_MODERN")

# Include directories
include_directories(
    ${U3D_MODERN_DIR}/RTL/Include
    ${U3D_MODERN_DIR}/RTL/Kernel/Include
    ${U3D_MODERN_DIR}/RTL/Component/Include
    ${U3D_MODERN_DIR}/RTL/Platform/Include
    ${U3D_MODERN_DIR}/RTL/Component/Rendering
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/OpenGL
    ${U3D_MODERN_DIR}/RTL/Component/Culling
    ${U3D_MODERN_DIR}/RTL/Component/ModifierChain
    ${U3D_MODERN_DIR}/RTL/Dependencies/WildCards
    ${U3D_MODERN_DIR}/RTL/Platform/Lin32/IFXRendering
    ${U3D_MODERN_DIR}/RTL/Platform/Lin32/IFXRendering/OpenGL
    ${X11_INCLUDE_DIR}
    ${OPENGL_INCLUDE_DIR}
)

# Source files
set(SOURCES
    xplayer.cpp
    u3dplayer.cpp
    U3DViewerX.cpp
    U3DSceneUtilities.cpp
    U3DCameraNavigation.cpp
    IFXOSRenderWindow.cpp
)

# Executable
add_executable(winXPlayer ${SOURCES})

# Compile definitions that U3D code expects
if(UNIX AND NOT APPLE)
    target_compile_definitions(winXPlayer PRIVATE LIN32 RENDERING __linux__)
endif()
target_compile_options(winXPlayer PRIVATE -fno-strict-aliasing)
set_target_properties(winXPlayer PROPERTIES ENABLE_EXPORTS ON)

# Link libraries
target_link_libraries(winXPlayer
    PRIVATE
    ${X11_LIBRARIES}
    ${OPENGL_LIBRARIES}
    ${U3D_MODERN_DIR}/build/libIFXCoreStatic.a
    ${U3D_MODERN_DIR}/build/libIFXCore.so
    ${U3D_MODERN_DIR}/build/libIFXImporting.so
    ${U3D_MODERN_DIR}/build/libIFXExporting.so
    ${U3D_MODERN_DIR}/build/libIFXScheduling.so
    dl
    pthread
)

set(IFXRendering_SRCS
    ${U3D_MODERN_DIR}/RTL/Kernel/DataTypes/IFXCoreArray.cpp
    ${U3D_MODERN_DIR}/RTL/Kernel/DataTypes/IFXCoreList.cpp
    ${U3D_MODERN_DIR}/RTL/Kernel/DataTypes/IFXFastAllocator.cpp
    ${U3D_MODERN_DIR}/RTL/Kernel/DataTypes/IFXListNode.cpp
    ${U3D_MODERN_DIR}/RTL/Kernel/DataTypes/IFXMatrix4x4.cpp
    ${U3D_MODERN_DIR}/RTL/Kernel/DataTypes/IFXQuaternion.cpp
    ${U3D_MODERN_DIR}/RTL/Kernel/DataTypes/IFXString.cpp
    ${U3D_MODERN_DIR}/RTL/Kernel/DataTypes/IFXUnitAllocator.cpp
    ${U3D_MODERN_DIR}/RTL/Kernel/DataTypes/IFXVector3.cpp
    ${U3D_MODERN_DIR}/RTL/Kernel/DataTypes/IFXVector4.cpp
    ${U3D_MODERN_DIR}/RTL/Dependencies/WildCards/wcmatch.cpp
    ${U3D_MODERN_DIR}/RTL/Kernel/Common/IFXDebug.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Culling/CIFXOctreeCollection.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Culling/CIFXOctreeCuller.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Culling/CIFXScenegraphCuller.cpp
    ${U3D_MODERN_DIR}/RTL/Platform/Lin32/Common/IFXOSRender.cpp
    ${U3D_MODERN_DIR}/RTL/Platform/Lin32/Common/IFXOSRenderWindow.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/CIFXDeviceLight.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/CIFXDeviceTexture.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/CIFXDeviceTexUnit.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/CIFXRenderContext.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/CIFXRender.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/CIFXRenderDevice.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/CIFXRenderServices.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/IFXAAFilter.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/IFXRendering.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/IFXRenderingGuids.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/Null/CIFXDeviceLightNULL.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/Null/CIFXDeviceTextureNULL.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/Null/CIFXDeviceTexUnitNULL.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/Null/CIFXRenderDeviceNULL.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/Null/CIFXRenderNULL.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/OpenGL/CIFXDeviceLightOGL.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/OpenGL/CIFXDeviceTextureOGL.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/OpenGL/CIFXDeviceTexUnitOGL.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/OpenGL/CIFXOpenGL.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/OpenGL/CIFXRenderDeviceOGL.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/OpenGL/CIFXRenderOGL.cpp
    ${U3D_MODERN_DIR}/RTL/Component/Rendering/OpenGL/IFXOpenGL.cpp
    ${U3D_MODERN_DIR}/RTL/Platform/Lin32/IFXRendering/IFXRenderingDllMain.cpp
    ${U3D_MODERN_DIR}/RTL/Platform/Lin32/IFXRendering/OpenGL/CIFXOpenGLOS.cpp
    ${U3D_MODERN_DIR}/RTL/Platform/Lin32/IFXRendering/OpenGL/CIFXRenderOGLOS.cpp
    ${U3D_MODERN_DIR}/RTL/IFXCorePluginStatic/IFXCorePluginStatic.cpp
)

add_library(IFXRendering MODULE ${IFXRendering_SRCS})
target_compile_definitions(IFXRendering PRIVATE LIN32 RENDERING __linux__)
target_compile_options(IFXRendering PRIVATE -fno-strict-aliasing)
target_link_libraries(IFXRendering PRIVATE ${OPENGL_LIBRARIES} ${X11_LIBRARIES} ${U3D_MODERN_DIR}/build/libIFXCore.so dl pthread)
