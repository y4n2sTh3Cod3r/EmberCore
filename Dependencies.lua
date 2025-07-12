VULKAN_SDK = os.getenv("VULKAN_SDK")

IncludeDir = {}

IncludeDir["VulkanSDK"] = "%{VULKAN_SDK}/include"
IncludeDir["LLGL"] = "%{wks.location}/EmberCoreRuntime/vendor/LLGL/include"
IncludeDir["ELGR"] = "%{wks.location}/EmberCoreRuntime/vendor/LLGL/src"

LibraryDir = {}

LibraryDir["VulkanSDK"] = "%{VULKAN_SDK}/Lib"
LibraryDir["LLGL"] = "%{wks.location}/EmberCoreRuntime/vendor/LLGL/lib"

Library = {}

Library["Vulkan"] = "%{LibraryDir.VulkanSDK}/vulkan-1.lib"
Library["LLGL"] = "%{LibraryDir.LLGL}/LLGL.lib"