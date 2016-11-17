project "wukongbase"
	kind "Makefile"
	language "C++"
	buildcommands {
        "premake5 --file=./wukong_base/wukongbase.lua --cc=clang gmake",
		"make -C wukong_base config=%{cfg.buildcfg}_%{cfg.platform} target=wukongbase"
    }
    cleancommands {
        "make -C wukong_base clean",
        "rm -rf wukong_base/bin"
    }