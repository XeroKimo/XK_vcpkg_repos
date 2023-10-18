vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO XeroKimo/xkMath
	REF 26a260b2d39cd3a3e120e6b3598cf4bddaa4f526
	SHA512 0
	HEAD_REF main
)

# Build:
    vcpkg_msbuild_install(
        SOURCE_PATH "${SOURCE_PATH}"
        PROJECT_SUBPATH "3FD/3FD.vcxproj"
        TARGET Build
    )

# vcpkg_configure_cmake(
#	SOURCE_PATH "${SOURCE_PATH}"
#	PREFER_NINJA
# )
# vcpkg_install_cmake()
# vcpkg_fixup_cmake_targets()
#
# file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
#
# file(
#	INSTALL "${SOURCE_PATH}/LICENSE"
#	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
#	RENAME copyright)