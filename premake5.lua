workspace "WukongEngine"
	configurations { "debug", "release" }
	platforms {"osx"}
	kind "ConsoleApp"
	language "C++"
	flags {"C++11"}
	includedirs {"wukong_base", "third_party/lua/lua/src", "engine/**"}
	files {"engine/**.cpp", "engine/**.c"}
	filter "configurations:Debug"
      defines { "DEBUG" }
      flags { "Symbols" }
	filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

	filter {}
		libdirs {"wukong_base/bin"}
		links {"c++", "uv", "wukongbase", "lua"}
	
project "WukongEngine"
	prebuildcommands {
		"make -C wukong_base config=" .. "%{cfg.buildcfg}_%{cfg.platform}" .. " target=wukongbase"
	}
	files {
		"main.cpp"
	}

include "third_party/lua/lua.lua"