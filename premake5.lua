-- Box2D premake5 script.
-- https://premake.github.io/

project "Glad"
    kind "StaticLib"
    targetname "libGlad"

    targetdir ("lib")
    objdir ("obj")

    makesettings [[
        CC = gcc
    ]]

    files {
        "include/glad/glad.h",
        "include/KHR/khrplatform.h",
        "src/glad.c"
    }

	includedirs {
		"include"
	}

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"