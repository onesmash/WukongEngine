project "grpc"
	kind "Makefile"
	language "C++"
    local cwd = os.getcwd()
	buildcommands {
        "make -C " .. cwd .. "/grpc static_cxx"
    }
    cleancommands {
        "make -C " .. cwd .. "/grpc clean"
    }