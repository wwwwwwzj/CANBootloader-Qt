
QT       += core gui

TARGET =  CANBootloader
TEMPLATE = app

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

# 强制MSVC编译器将源文件按UTF-8解析
win32 {
    QMAKE_CXXFLAGS += /utf-8
    QMAKE_CFLAGS += /utf-8
}

//DEFINES += LANGUE_EN

RESOURCES += \
    ../source/image.qrc
RC_FILE = \
    ../source/ico.rc

FORMS += \
    ../source/mainwindow_ch.ui \
    ../source/scandevrangedialog.ui

OTHER_FILES += \
    ../source/ico.rc

HEADERS += \
    ../source/mainwindow.h \
    ../source/scandevrangedialog.h \
    ../source/ControlCAN.h \
    ../source/can_driver.h

SOURCES += \
    ../source/main.cpp \
    ../source/mainwindow.cpp \
    ../source/scandevrangedialog.cpp

unix|win32: LIBS += -L$$PWD/lib/x64/ -lControlCAN

INCLUDEPATH += $$PWD/lib/x64
DEPENDPATH += $$PWD/lib/x64
