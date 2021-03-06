# GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_osx
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild prelink

ifeq ($(config),debug_osx)
  TARGETDIR = bin
  TARGET = $(TARGETDIR)/grpc
  define BUILDCMDS
	@echo Running build commands
	make -C /Users/xuhui/Code/WukongEngine/third_party/grpc/grpc static_cxx
  endef
  define CLEANCMDS
	@echo Running clean commands
	make -C /Users/xuhui/Code/WukongEngine/third_party/grpc/grpc clean
  endef
endif

ifeq ($(config),release_osx)
  TARGETDIR = bin
  TARGET = $(TARGETDIR)/grpc
  define BUILDCMDS
	@echo Running build commands
	make -C /Users/xuhui/Code/WukongEngine/third_party/grpc/grpc static_cxx
  endef
  define CLEANCMDS
	@echo Running clean commands
	make -C /Users/xuhui/Code/WukongEngine/third_party/grpc/grpc clean
  endef
endif

$(TARGET):
	$(BUILDCMDS)

clean:
	$(CLEANCMDS)
