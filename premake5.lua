workspace "WukongEngine"
	configurations { "debug", "release" }
	platforms {"osx"}
	kind "ConsoleApp"
	language "C++"
	flags {"C++11"}
	targetdir "bin"
	filter "configurations:debug"
      defines { "DEBUG" }
      flags { "Symbols" }
	filter "configurations:release"
      defines { "NDEBUG" }
      optimize "On"
	
project "WukongEngine"
	includedirs {"wukong_base/bin/include", "third_party/lua/lua/src", "engine/**", "third_party/grpc/grpc/include"}
	libdirs {"bin", "wukong_base/bin", "third_party/grpc/grpc/libs/opt"}
	links {"c++", "uv", "lua", "wukong_base/bin/wukongbase", "wukongbase", "grpc++"}
	files {"engine/**.cpp", "engine/**.c"}
	files {
		"main.cpp"
	}

include "wukongbase.lua"
include "third_party/lua/lua.lua"
include "third_party/grpc/grpc"