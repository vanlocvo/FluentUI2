cmake_minimum_required(VERSION 3.21)

project(Gallery VERSION 1.0.3)

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(PROJECT_APP_NAME "FluentUI-Gallery")
set(PROJECT_COMPANY "ZhuZiChu")
set(PROJECT_COPYRIGHT "Copyright (c) 2024 ZhuZiChu's Lab. All rights reserved.")
set(PROJECT_DOMAIN "com.zhuzichu.cn.fluentui")
set(PROJECT_DESCRIPTION "A QML project showcasing Fluent UI components and styles inspired by Microsoft's Fluent Design System.")

if(WIN32)
    set(APPLICATION_DIR_PATH ${CMAKE_CURRENT_BINARY_DIR})
    set(APP_ICON "${CMAKE_CURRENT_SOURCE_DIR}/favicon/favicon.ico")
elseif(APPLE)
    set(APPLICATION_DIR_PATH ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_APP_NAME}.app/Contents/MacOS)
    set(APP_ICON "${CMAKE_CURRENT_SOURCE_DIR}/favicon/favicon.icns")
else()
    set(APPLICATION_DIR_PATH ${CMAKE_CURRENT_BINARY_DIR})
    set(APP_ICON "${CMAKE_CURRENT_SOURCE_DIR}/favicon/favicon.png")
endif()

set(VERSION_STR "${PROJECT_VERSION_MAJOR},${PROJECT_VERSION_MINOR},${PROJECT_VERSION_PATCH}")
add_definitions(-DAPP_VERSION=${VERSION_STR})

set(QML_IMPORT_PATH ${CMAKE_BINARY_DIR}/qt/qml CACHE STRING "" FORCE)

find_package(Qt6 COMPONENTS Quick QuickControls2 REQUIRED)

set(QT_SDK_DIR "${Qt6_DIR}/../../..")
cmake_path(SET QT_SDK_DIR NORMALIZE ${QT_SDK_DIR})

set(QML_FILES
    res/qml/App.qml
    res/qml/window/MainWindow.qml
    res/qml/screen/MainScreen.qml
    res/qml/component/CardHighlight.qml
    res/qml/page/T_TimePicker.qml
    res/qml/page/T_DatePicker.qml
    res/qml/page/T_ColorPicker.qml
    res/qml/page/T_NavigationView.qml
    res/qml/page/T_TabView.qml
    res/qml/page/T_Colors.qml
    res/qml/page/T_Typography.qml
    res/qml/page/T_Icons.qml
    res/qml/page/T_About.qml
    res/qml/page/T_Settings.qml
    res/qml/page/T_Home.qml
    res/qml/page/T_Material.qml
    res/qml/page/T_StandardButton.qml
    res/qml/page/T_FilledButton.qml
    res/qml/page/T_DropDownButton.qml
    res/qml/page/T_HyperlinkButton.qml
    res/qml/page/T_ToggleButton.qml
    res/qml/page/T_Checkbox.qml
    res/qml/page/T_RadioButton.qml
    res/qml/page/T_Slider.qml
    res/qml/page/T_ToggleSwitch.qml
    res/qml/page/T_TextBox.qml
    res/qml/page/T_AutoSuggestBox.qml
    res/qml/page/T_ComboBox.qml
    res/qml/page/T_NumberBox.qml
    res/qml/page/T_Expander.qml
    res/qml/page/T_InfoBar.qml
    res/qml/page/T_InfoBadge.qml
    res/qml/page/T_SyntaxView.qml
    res/qml/page/T_IconLabel.qml
    res/qml/page/T_IconButton.qml
    res/qml/page/T_DataGrid.qml
    res/qml/page/T_ProgressBar.qml
    res/qml/page/T_ProgressRing.qml
    res/qml/page/T_ContentDialog.qml
    res/qml/page/T_ToolTip.qml
    res/qml/page/T_CalendarPicker.qml
    res/qml/page/T_Drawer.qml
    res/qml/page/T_Menu.qml
    res/qml/page/T_Watermark.qml
    res/qml/page/T_QRCode.qml
    res/qml/page/T_Test.qml
    res/qml/page/T_MultiWindow.qml
    res/qml/page/T_Pagination.qml
    res/qml/page/T_Acrylic.qml
    res/qml/chart/T_PieChart.qml
    res/qml/chart/T_PolarAreaChart.qml
    res/qml/chart/T_RadarChart.qml
    res/qml/chart/T_ScatterChart.qml
    res/qml/chart/T_BarChart.qml
    res/qml/chart/T_BubbleChart.qml
    res/qml/chart/T_LineChart.qml
    res/qml/page/T_Tour.qml
    res/qml/page/T_Breadcrumb.qml
    res/qml/page/T_SubPage.qml
    res/qml/page/T_SplitLayout.qml
    res/qml/page/T_StaggeredLayout.qml
    res/qml/page/T_Dial.qml
    res/qml/page/T_BannerLayout.qml
    res/qml/page/T_FlipLayout.qml
    res/qml/page/T_RatingControl.qml
    res/qml/page/T_TabBar.qml
    res/qml/page/T_ProgressButton.qml
    res/qml/page/T_CopyableText.qml
    res/qml/page/T_TreeDataGrid.qml
    res/qml/page/T_Marquee.qml
    res/qml/page/T_ShortcutPicker.qml
    res/qml/page/T_MultiSelectComboBox.qml
    res/qml/page/T_Chip.qml
    res/qml/page/T_MultiLineTextBox.qml
    res/qml/page/T_PasswordBox.qml
    res/qml/page/T_PillButton.qml
    res/qml/page/T_SegmentedControl.qml
    res/qml/page/T_FileTreeData.qml
    res/qml/page/T_DelayButton.qml
    res/qml/page/T_Shimmer.qml
    res/qml/page/T_SpinBox.qml
    res/qml/window/PageWindow.qml
    res/qml/window/StandardWindow.qml
    res/qml/window/SingleTaskWindow.qml
    res/qml/window/SingleInstanceWindow.qml
    res/qml/screen/MultiWindowScreen.qml
    res/qml/window/LoginWindow.qml
    res/qml/screen/LoginScreen.qml
)

set(QML_SINGLETONS
    res/qml/Global.qml
)

set(RESOURCES_FILES
    qtquickcontrols2.conf
    res/image/logo.png
    res/image/ic_avatar.jpg
    res/image/ic_spinner.png
    res/image/avatar_1.svg
    res/image/avatar_2.svg
    res/image/avatar_3.svg
    res/image/avatar_4.svg
    res/image/avatar_5.svg
    res/image/avatar_6.svg
    res/image/avatar_7.svg
    res/image/avatar_8.svg
    res/image/avatar_9.svg
    res/image/avatar_10.svg
    res/image/avatar_11.svg
    res/image/avatar_12.svg
    res/image/banner_1.webp
    res/image/banner_2.webp
    res/image/banner_3.webp
    res/image/bg_scenic.webp
    res/image/ic_folder.png
    res/image/ic_file_text.png
    Gallery_zh_CN.qm
    Gallery_en_US.qm
)

set(SOURCE_FILES
    src/main.cpp
    src/stdafx.h
    src/CircularReveal.h src/CircularReveal.cpp
    src/AppInfo.h src/AppInfo.cpp
    src/SettingsHelper.h src/SettingsHelper.cpp
    src/Log.h src/Log.cpp
    src/DataGridController.h src/DataGridController.cpp
    src/TreeDataGridController.h src/TreeDataGridController.cpp
    src/FileTreeDataController.h src/FileTreeDataController.cpp
    src/LoginViewModel.h src/LoginViewModel.cpp
)

set_source_files_properties(${QML_SINGLETONS} PROPERTIES QT_QML_SINGLETON_TYPE TRUE)

if (WIN32)
    configure_file(.cmake/win_app.rc.in ${CMAKE_CURRENT_BINARY_DIR}/win_app.rc)
    configure_file(.cmake/InstallerScript.iss.in ${CMAKE_SOURCE_DIR}/package/InstallerScript.iss)
    set(APP_ICON_RESOURCE_WINDOWS ${CMAKE_CURRENT_BINARY_DIR}/win_app.rc)
    qt_add_executable(${PROJECT_NAME} ${SOURCE_FILES} ${APP_ICON_RESOURCE_WINDOWS})
elseif(APPLE)
    set(MACOSX_BUNDLE_GUI_IDENTIFIER ${PROJECT_DOMAIN})
    set(MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION})
    set(MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR})
    set(MACOSX_BUNDLE_BUNDLE_NAME ${PROJECT_APP_NAME})
    set(MACOSX_BUNDLE_COPYRIGHT ${PROJECT_COPYRIGHT})
    set(MACOSX_BUNDLE_DEVELOPMENT_REGION "Chinese")
    set(CMAKE_OSX_DEPLOYMENT_TARGET "11.0" CACHE STRING "Minimum OS X deployment version" FORCE)
    set(MACOSX_BUNDLE_EXECUTABLE_NAME ${PROJECT_APP_NAME})
    set(MACOSX_BUNDLE_ICON_FILE favicon)
    configure_file(.cmake/MacOSXBundleInfo.plist.in ${CMAKE_CURRENT_BINARY_DIR}/Info.plist)
    set_source_files_properties(${APP_ICON} PROPERTIES MACOSX_PACKAGE_LOCATION "Resources")
    qt_add_executable(${PROJECT_NAME} ${SOURCE_FILES} ${APP_ICON})
elseif(UNIX)
    configure_file(.cmake/linux_control.in ${CMAKE_SOURCE_DIR}/package/DEBIAN/control)
    configure_file(.cmake/linux_postinst.in ${CMAKE_SOURCE_DIR}/package/DEBIAN/postinst)
    configure_file(.cmake/linux_postrm.in ${CMAKE_SOURCE_DIR}/package/DEBIAN/postrm)
    configure_file(.cmake/linux.desktop.in ${CMAKE_SOURCE_DIR}/package/opt/${PROJECT_APP_NAME}/${PROJECT_APP_NAME}.desktop)
    qt_add_executable(${PROJECT_NAME} ${SOURCE_FILES})
else()
    qt_add_executable(${PROJECT_NAME} ${SOURCE_FILES})
endif()

qt_add_qml_module(${PROJECT_NAME}
    URI "Gallery"
    VERSION "1.0"
    TYPEINFO "plugins.qmltypes"
    QML_FILES ${QML_FILES} ${QML_SINGLETONS}
    RESOURCES ${RESOURCES_FILES}
    RESOURCE_PREFIX /qt/qml
    OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/qt/qml/Gallery
)

if (NOT CMAKE_SYSTEM_NAME STREQUAL "Emscripten")
    find_program(QT_LUPDATE NAMES lupdate lupdate-qt6)
    find_program(QT_LRELEASE NAMES lrelease lrelease-qt6)
    file(GLOB TS_FILE_PATHS ${CMAKE_CURRENT_LIST_DIR}/ *.ts)
    add_custom_target(${PROJECT_NAME}_translations
        COMMAND ${QT_LUPDATE} ${CMAKE_CURRENT_LIST_DIR} -ts ${PROJECT_NAME}_en_US.ts WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}
        COMMAND ${QT_LUPDATE} ${CMAKE_CURRENT_LIST_DIR} -ts ${PROJECT_NAME}_zh_CN.ts WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}
        COMMAND ${QT_LRELEASE} ${PROJECT_NAME}_en_US.ts WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}
        COMMAND ${QT_LRELEASE} ${PROJECT_NAME}_zh_CN.ts WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}
        SOURCES ${TS_FILE_PATHS}
    )
add_dependencies(${PROJECT_NAME} ${PROJECT_NAME}_translations)
endif()

target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt6::Quick
    Qt6::QuickControls2
)

target_compile_definitions(${PROJECT_NAME} PRIVATE
    QT_MESSAGELOGCONTEXT
    PROJECT_NAME="${PROJECT_NAME}"
    PROJECT_APP_NAME="${PROJECT_APP_NAME}"
    PROJECT_COMPANY="${PROJECT_COMPANY}"
    PROJECT_DOMAIN="${PROJECT_DOMAIN}"
    PROJECT_DESCRIPTION="${PROJECT_DESCRIPTION}"
    PROJECT_VERSION="${PROJECT_VERSION}"
    PROJECT_SOURCE_DIR="${CMAKE_CURRENT_SOURCE_DIR}"
    PROJECT_HOTLOAD_ENABLED="${HOTLOAD_ENABLED}"
)

target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/src
)

set_target_properties(${PROJECT_NAME} PROPERTIES
    MACOSX_BUNDLE_INFO_PLIST ${CMAKE_CURRENT_BINARY_DIR}/Info.plist
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
    OUTPUT_NAME ${PROJECT_APP_NAME}
)

target_compile_definitions(${PROJECT_NAME} PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)

add_custom_target(${PROJECT_NAME}_install_plugin ALL
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/FluentUI ${CMAKE_CURRENT_BINARY_DIR}/FluentUI
    DEPENDS ${PROJECT_NAME}
    COMMENT "Installing ${PROJECT_NAME} plugin to Qt qml"
    SOURCES CMakeLists.txt
)

set(DIST_PATH ${CMAKE_SOURCE_DIR}/dist)

file(WRITE ${CMAKE_BINARY_DIR}/remove_build_files.cmake
    "file(GLOB_RECURSE REMOVE_FILES
        \"${DIST_PATH}/*.qml\"
        \"${DIST_PATH}/*.debug\"
        \"${DIST_PATH}/*opengl32sw*\"
        \"${DIST_PATH}/*dxcompiler*\"
        \"${DIST_PATH}/*d3dcompiler_47*\"
        \"${DIST_PATH}/*vc_redist*\"
        \"${DIST_PATH}/*dxil*\"
        \"${DIST_PATH}/*Qt6Pdf*\"
        \"${DIST_PATH}/*Qt6VirtualKeyboard*\"
        \"${DIST_PATH}/*Qt6QuickControls2ImagineStyleImpl*\"
        \"${DIST_PATH}/*Qt6QuickControls2Universal*\"
        \"${DIST_PATH}/*Qt6QuickControls2UniversalStyleImpl*\"
        \"${DIST_PATH}/*Qt6QuickControls2WindowsStyleImpl*\"
        \"${DIST_PATH}/*Qt6QuickControls2Fusion*\"
        \"${DIST_PATH}/*Qt6QuickControls2FusionStyleImpl*\"
        \"${DIST_PATH}/*Qt6QuickControls2Imagine*\"
        \"${DIST_PATH}/*Qt6Quick3DUtils*\"
        \"${DIST_PATH}/*Qt63DAnimation*\"
        \"${DIST_PATH}/*Qt63DCore*\"
        \"${DIST_PATH}/*Qt63DExtras*\"
        \"${DIST_PATH}/*Qt63DInput*\"
        \"${DIST_PATH}/*Qt63DLogic*\"
        \"${DIST_PATH}/*Qt63DQuickScene2D*\"
        \"${DIST_PATH}/*Qt63DRender*\"
    )
file(REMOVE \${REMOVE_FILES})
"
)

if (CMAKE_BUILD_TYPE MATCHES "Release")
    if(WIN32)
        find_program(QT_DEPLOY NAMES windeployqt)
        if (MSVC)
            file(GLOB_RECURSE RUNTIME_FILE_PATHS ./runtime/msvc/*.dll)
        elseif (MINGW)
            file(GLOB_RECURSE RUNTIME_FILE_PATHS ./runtime/mingw/*.dll)
        endif ()
        add_custom_target(${PROJECT_NAME}_dist
            COMMAND ${CMAKE_COMMAND} -E remove_directory ${DIST_PATH}
            COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_APP_NAME}.exe ${DIST_PATH}/${PROJECT_APP_NAME}.exe
            COMMAND ${QT_DEPLOY} --qmldir=${CMAKE_SOURCE_DIR} --plugindir ${DIST_PATH}/plugins --no-translations --compiler-runtime ${DIST_PATH}/${PROJECT_APP_NAME}.exe
            COMMAND ${CMAKE_COMMAND} -P ${CMAKE_BINARY_DIR}/remove_build_files.cmake
            COMMAND ${CMAKE_COMMAND} -E copy ${RUNTIME_FILE_PATHS} ${DIST_PATH}
            COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/FluentUI ${DIST_PATH}/qt/qml/FluentUI
            COMMENT "Windows Deploying Qt Dependencies After Build........."
            SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.txt
            WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
        )
endif()
endif()
