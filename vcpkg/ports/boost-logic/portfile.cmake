# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/logic
    REF boost-1.77.0
    SHA512 e99a3b173e1d72c5e3228ada3061a8f5e09c544d5d9bb125495aecd863494ad007e3b7b4348e7f1940efe003446ea0e97b48b44af0180661d3f73621468c5ef1
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
