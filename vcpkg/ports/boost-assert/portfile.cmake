# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/assert
    REF boost-1.77.0
    SHA512 90116861cd0457ffa61b4b2ebecc978252f74196ad87d1f756702b28b4010fe366b4dd1e6a5b3726c6926b4fb1821d9f997a758fd02f8d3be5a45ef64e104e27
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})