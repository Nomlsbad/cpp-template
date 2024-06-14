macro(declare_target NAME)
    set(TARGET_NAME ${NAME})

    set(TARGET_PATH "${CMAKE_CURRENT_LIST_DIR}")
    set(TARGET_SRC_PATH "${TARGET_PATH}/src")

    set(TARGET_MAIN "${TARGET_SRC_PATH}/main.cpp")
    file(GLOB_RECURSE TARGET_SOURCES CONFIGURE_DEPENDS "${TARGET_SRC_PATH}/*.cpp")
    list(FILTER TARGET_SOURCES EXCLUDE REGEX "${TARGET_MAIN}")
    file(GLOB_RECURSE TARGET_HEADERS CONFIGURE_DEPENDS "${TARGET_SRC_PATH}/*.h")
endmacro()