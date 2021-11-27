# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/histogram
    REF boost-1.77.0
    SHA512 bb802772651e1e850ffbf385c83685a0f745f4e90a48b18dc80b701c4bd865fe47e167a7a7a2d434d6d07fbde088b2c3344a67a08a1b5a9268b4f68d88256ee7
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})