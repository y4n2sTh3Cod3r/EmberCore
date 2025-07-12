include "Dependencies.lua"

workspace "EmberCore"
    architecture "x86_64"
    startproject "Editor"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

    flags
    {
        "MultiProcessorCompile"
    }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-${cfg.architecture}"

include "EmberCoreRuntime"

group "Core"
    include "EmberCoreRuntime"
group ""

group "Tools"
    include "Editor"
group ""

group "Dependencies"
    include "EmberCoreRuntime/vendor/ELGR"
group ""