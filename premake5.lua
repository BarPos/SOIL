project "soil"
	kind "StaticLib"
	language "C"
	staticruntime "off"

	targetdir ("%{wks.location}/build/" .. outputdir .. "/%{prj.name}")
	debugdir ("%{wks.location}/build/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/build/tmp/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/image_DTX.h",
		"src/image_helper.h",
		"src/SOIL.h",
		"src/stb_image_aug.h",
		"src/stbi_DDS_aug.h",
		"src/stbi_DDS_aug_c.h",

    "src/image_DTX.c",
    "src/image_helper.c",
    "src/SOIL.c",
    "src/stb_image_aug.c",
	}

  defines 
	{ 
		"WIN32",
    "_LIB",
    "UNICODE",
    "_UNICODE",
	}

  filter "configurations:Debug"
  		defines "_DEBUG"
  
  	filter "configurations:Release"
  		defines "NDEBUG"

	filter "system:linux"
		pic "On"

		systemversion "latest"

	filter "system:windows"
		systemversion "latest"
