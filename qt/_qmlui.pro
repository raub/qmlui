CONFIG(debug, debug|release): CONFIG -= release
else: CONFIG -= debug

QT += core gui qml quick
CONFIG += c++11
#CONFIG += qml_debug

TEMPLATE = lib
TARGET = qmlui

INCLUDE += $$PWD/../include

DEFINES += QMLUI_SHARED QT_DEPRECATED_WARNINGS

DESTDIR = $$PWD/../bin-win32
contains(QMAKE_TARGET.arch, x86_64):{
	DESTDIR = $$PWD/../bin-win64
}

unix {
	DESTDIR = $$PWD/../bin-linux32
	contains(QMAKE_TARGET.arch, x86_64):{
		DESTDIR = $$PWD/../bin-linux64
	}
}

macx {
	DESTDIR = $$PWD/../bin-mac64
}


SOURCES += \
	qml-renderer.cpp \
	qml-cb.cpp \
	keyconv.cpp \
	qml-view.cpp \
	qml-ui.cpp

HEADERS += \
	qml-renderer.hpp \
	platform.hpp \
	qml-cb.hpp \
	keyconv.hpp \
	qml-view.hpp \
	qml-ui.hpp

RESOURCES += qml.qrc
