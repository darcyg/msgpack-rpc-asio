------------------------------------------------------------------------------
-- Solution
------------------------------------------------------------------------------
solution "msgpack-asiorpc"
configurations { "Debug", "Release" }

configuration "Debug"
do
	defines { "DEBUG" }
	flags { "Symbols", }
	targetdir "debug"
end

configuration "Release"
do
	defines { "NDEBUG" }
	flags { "Optimize", }
	targetdir "release"
end

configuration "gmake"
do
    buildoptions {
        "-std=c++0x",
        "-Wno-deprecated",
    }
end

configuration "vs*"
do
    includedirs {
        "$(BOOST_DIR)",
    }
    libdirs {
        "$(BOOST_DIR)/lib",
    }
end

configuration {}

include "test"
include "sample"
include "msgpack-asiorpc"
include "msgpack"
