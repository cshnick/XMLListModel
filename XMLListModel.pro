TEMPLATE = app

QT += qml quick widgets xml

SOURCES += main.cpp \
    xmllistmodel.cpp

RESOURCES += qml.qrc
CONFIG += c++11

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =
AE_SRC="/home/ilia/Development/achivement_engine/src"

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    xmllistmodel.h

INCLUDEPATH += $$AE_SRC
