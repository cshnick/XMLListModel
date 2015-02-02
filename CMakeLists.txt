cmake_minimum_required(VERSION 2.8.11)

project(Axc)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
SET (AE_SRC "/home/ilia/Development/achivement_engine/src")
include_directories(
	.
	${AE_SRC}
)
SET (SRC_LIST
  xmllistmodel.cpp
  main.cpp
)

SET (HEADERS
  xmllistmodel.h
)
find_package(Qt5 COMPONENTS Quick Core Network Xml Widgets)
qt5_add_resources(RESOURCES qml.qrc)
qt5_wrap_cpp(xmllistmodel_MOC xmllistmodel.h)

add_executable(${PROJECT_NAME} ${SRC_LIST} ${xmllistmodel_MOC} ${RESOURCES} ${HEADERS})
qt5_use_modules(${PROJECT_NAME} Quick Core Network Xml Widgets)