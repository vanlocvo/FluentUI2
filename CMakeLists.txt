cmake_minimum_required(VERSION 3.21)

project(FluentUI-Pro VERSION 1.0.0)

option(HOTLOAD_ENABLED "Enable hot reload" OFF)
message("---------------------------- Gallery ----------------------------")
message("Enable hot reload: ${HOTLOAD_ENABLED}")
message("------------------------------------------------------------------")

add_subdirectory(Gallery)
