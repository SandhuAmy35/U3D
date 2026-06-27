# Install script for directory: /home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/libIFXCoreStatic.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXCore.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXCore.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXCore.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE MODULE FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/libIFXCore.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXCore.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXCore.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXCore.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXExporting.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXExporting.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXExporting.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE MODULE FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/libIFXExporting.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXExporting.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXExporting.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXExporting.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXImporting.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXImporting.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXImporting.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE MODULE FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/libIFXImporting.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXImporting.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXImporting.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXImporting.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXScheduling.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXScheduling.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXScheduling.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE MODULE FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/libIFXScheduling.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXScheduling.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXScheduling.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIFXScheduling.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFConverter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFConverter")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFConverter"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/IDTFConverter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFConverter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFConverter")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFConverter")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/CMakeFiles/IDTFConverter.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIDTF.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIDTF.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIDTF.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/libIDTF.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIDTF.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIDTF.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libIDTF.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFGen" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFGen")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFGen"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/IDTFGen")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFGen" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFGen")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFGen"
         OLD_RPATH "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/IDTFGen")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/CMakeFiles/IDTFGen.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/HelloU3DWorld" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/HelloU3DWorld")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/HelloU3DWorld"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/HelloU3DWorld")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/HelloU3DWorld" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/HelloU3DWorld")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/HelloU3DWorld")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/CMakeFiles/HelloU3DWorld.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/u3d" TYPE DIRECTORY FILES
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Platform/Include/"
    FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/u3d" TYPE FILE FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Platform/Lin32/IFXRendering/OpenGL/IFXOpenGLOS.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/u3d" TYPE FILE FILES
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/CArrayList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/DX7asDX8.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXACContext.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAdaptiveMetric.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAnimationModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXArray.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAttributes.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthor.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorCLODAccess.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorCLODGen.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorCLODMesh.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorCLODResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorGeomCompiler.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorLineSet.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorLineSetAccess.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorLineSetAnalyzer.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorLineSetResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorMesh.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorMeshMap.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorMeshScrub.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorPointSet.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorPointSetAccess.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorPointSetResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAuthorUpdate.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXAutoPtr.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBaseOpenGL.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBitStreamCompressedX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBitStreamX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBlendParam.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBlockReaderX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBlockTypes.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBlockWriterX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBones.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBonesManager.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBoneWeightsModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBoundHierarchy.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBoundHierarchyMgr.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBoundingBox.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBoundSphereDataElement.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBoundVolume.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXBTTHash.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXClock.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXCLODManagerInterface.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXCLODModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXCoincidentVertexMap.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXCollection.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXCoreCIDs.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXCoreServices.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXCoreServicesRef.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXCornerIter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDataBlock.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDataBlockQueueX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDataBlockX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDataPacket.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDecoderChainX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDecoderX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDeque.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDevice.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDidRegistry.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDids.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDirectX7.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDirectX8.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXDummyModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXEncoderX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXEnums.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXErrorInfo.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXEuler.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXExportingCIDs.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXExportingInterfaces.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXExportOptions.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXExtensionDecoderX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXExtensionEncoderX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXFace.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXFastAllocator.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXFastHeap.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXFatCornerIter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXFileReference.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXFrustum.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXGenerator.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXGlyph2DCommands.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXGlyph2DModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXGlyphCommandList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXHash.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXHashMap.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXHistogramDynamic.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXIDManager.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXImageCodec.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXImportingCIDs.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXImportingInterfaces.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXInet.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXInstant.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXInterleavedData.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXIterators.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXKeyFrame.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXKeyTrack.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXKeyTrackArray.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXLight.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXLightResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXLightSet.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXLine.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXListContext.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXListNode.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXLoadManager.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMarker.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMarkerX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMaterialResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMesh.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMeshCompiler.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMeshGroup.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMeshMap.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMetaDataX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMixerConstruct.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMixerQueue.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXModel.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXModifierBaseDecoder.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXModifierChain.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXModifierDataElementIter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXModifierDataPacket.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMotion.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMotionManager.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMotionMixer.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXMotionResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXNameMap.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXNeighborFace.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXNeighborMesh.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXNeighborResControllerIntfc.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXNode.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXNotificationInfo.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXNotificationManager.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXObserver.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXOpenGL.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXPalette.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXPickObject.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXProgressCallback.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRay.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXReadBuffer.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXReadBufferX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRender.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderable.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderBlend.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderCaps.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderClear.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderContext.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderDevice.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderFog.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderHelpers.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderingCIDs.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderingInterfaces.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderLight.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderMaterial.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderPass.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderServices.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderStencil.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderTexUnit.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXRenderView.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXResourceClient.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSceneGraph.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXScheduler.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSchedulerInfo.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSchedulerTypes.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSchedulingCIDs.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSchedulingInterfaces.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXScreenSpaceMetricInterface.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSetAdjacencyX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSetX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXShader.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXShaderList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXShaderLitTexture.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXShadingModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSimpleHash.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSimpleList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSimulationInfo.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSimulationManager.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSimulationTask.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSkeleton.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSkeletonDataElement.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSkeletonMixer.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSmartPtr.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSpatial.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSpatialAssociation.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSpatialSetQuery.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXStdio.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSubdivManagerInterface.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSubdivModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSubject.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXSystemManager.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXTask.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXTaskCallback.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXTaskData.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXTaskManager.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXTaskManagerNode.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXTaskManagerView.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXTextureImageTools.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXTextureObject.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXTimeManager.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXTransform.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXTransformStack.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXUnitAllocator.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXUpdates.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXUpdatesGroup.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXUVGenerator.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXUVMapper.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXVertexAttributes.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXVertexIndexer.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXVertexMap.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXVertexMapGroup.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXView.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXViewResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXVoidStar.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXVoidWrapper.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXWriteBuffer.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXWriteBufferX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/IFXWriteManager.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Include/InsertionSort.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXAutoRelease.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXCheckX.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXCOM.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXConnection.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXConnectionServer.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXDataTypes.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXDebug.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXException.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXGUID.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXIPP.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXMatrix4x4.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXMemory.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXPerformanceTimer.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXPlugin.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXQuaternion.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXResult.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXResultComponentEngine.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXString.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXUnknown.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXVector2.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXVector3.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXVector4.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Kernel/Include/IFXVersion.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Platform/Include/IFXAPI.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Platform/Include/IFXOSFileIterator.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Platform/Include/IFXOSLoader.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Platform/Include/IFXOSRender.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Platform/Include/IFXOSSocket.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Platform/Include/IFXOSUtilities.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Platform/Include/IFXRenderWindow.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/libIDTF/SceneConverterLib.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/libIDTF/Writer.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/DefaultSettings.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/File.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/FileReferenceConverter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/IConverter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/LineSetConverter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/MeshConverter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/MetaDataConverter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/ModelConverter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/ModifierConverter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/NodeConverter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/PointSetConverter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/ResourceConverter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/TextureConverter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Include/ConverterOptions.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Include/ConverterResult.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Include/DebugInfo.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Include/SceneUtilities.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Include/TGAImage.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Include/U3DHeaders.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/AnimationModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/BoneWeightModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/CLODModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/Color.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/FileReference.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/GlyphCommandList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/GlyphCommands.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/GlyphModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/INode.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/Int2.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/Int3.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/IResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/LightNode.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/LightResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/LightResourceList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/LineSetResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/MaterialResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/MaterialResourceList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/MeshResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/MetaDataList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ModelNode.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ModelResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ModelResourceList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ModelSkeleton.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/Modifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ModifierList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/MotionResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/MotionResourceList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/Node.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/NodeList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ParentData.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ParentList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/Point.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/PointSetResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/Quat.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/Resource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ResourceList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/SceneData.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/SceneResources.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ShaderResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ShaderResourceList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ShadingDescription.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ShadingDescriptionList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ShadingModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/SubdivisionModifier.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/TextureResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/TextureResourceList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/Tokens.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/UrlList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ViewNodeData.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ViewNode.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ViewResource.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/IDTF/Common/ViewResourceList.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Dependencies/WildCards/wcmatch.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/RTL/Component/Base/IFXVectorHasher.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/u3d/samples/SampleCode" TYPE FILE FILES
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/Samples/SampleCode/HelloWorld.cpp"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/Samples/SampleCode/IDTFGen.cpp"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/Samples/SampleCode/Makefile.sample"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/Samples/SampleCode/CMakeLists.txt"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/Samples/SampleCode/vtkU3DExporter.cxx"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/Samples/SampleCode/vtkU3DExporter.h"
    "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/Samples/SampleCode/vtkU3DExporterTest.cxx"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/u3d/samples" TYPE DIRECTORY FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/Samples/TestScenes" REGEX "/Makef[^/]*$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/u3d/docs" TYPE DIRECTORY FILES "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/Docs/" REGEX "/Makef[^/]*$" EXCLUDE)
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/posiedon/Desktop/Coding/DIRECTOR/u3d_MODERN/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
