workspace "WukongEngine"
	configurations { "debug", "release" }
	platforms {"osx"}
	kind "ConsoleApp"
	language "C++"
	flags {"C++11"}
	filter "configurations:debug"
      defines { "DEBUG" }
      flags { "Symbols" }
	filter "configurations:release"
      defines { "NDEBUG" }
      optimize "On"

	filter {}
		libdirs {"wukong_base/bin"}
		links {"c++", "uv", "wukongbase", "lua"}
	
project "WukongEngine"
	prebuildcommands {
		"make -C wukong_base config=" .. "%{cfg.buildcfg}_%{cfg.platform}" .. " target=wukongbase"
	}
	includedirs {"wukong_base/bin/include", "third_party/lua/lua/src", "engine/**"}
	files {"engine/**.cpp", "engine/**.c"}
	files {
		"main.cpp"
	}

include "third_party/lua/lua.lua"