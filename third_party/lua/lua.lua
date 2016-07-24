project "lua"
	kind "StaticLib"
	language "C++"
	includedirs {"lua/src"}
	files {"lua/src/**.h", "lua/src/**.c"}
	removefiles {"lua/src/lua.c",
					"lua/src/luac.c"}
		