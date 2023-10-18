vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO xerokimo/xkmath
	REF 26a260b2d39cd3a3e120e6b3598cf4bddaa4f526
	SHA512 80b86df221a678b1f813d21d4e0d149d7dec529cc88629860c362dd27d4e16d98ceb2ac4d7a4733e491d3a97a065e628c34042ef7f2b800c131338da383a75f5
	HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)