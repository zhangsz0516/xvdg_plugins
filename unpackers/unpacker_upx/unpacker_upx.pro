TARGET = upx

contains(QT_ARCH, i386) {
    TARGET = $$qtLibraryTarget($${TARGET}32)
} else {
    TARGET = $$qtLibraryTarget($${TARGET}64)
}

TEMPLATE = lib
CONFIG += plugin

include(../../build.pri)

include(unpacker_upx.pri)
