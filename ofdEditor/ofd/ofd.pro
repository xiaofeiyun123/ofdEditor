#-------------------------------------------------
#
# Project created by QtCreator 2017-04-13T16:23:15
#
#-------------------------------------------------

# 这个文件是为了建立ofd的文件解析，读取相关的

QT       += widgets xmlpatterns \
            xml

TARGET = ofd
TEMPLATE = lib

DEFINES += OFD_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    ofd_parser.cpp \
    DataTypes/basic_datatypes.cpp \
    ofd_writer.cpp  \
    Loaders/ZipTool.cpp \
    ofdexceptions.cpp \
    DataTypes/page/CT_PageBlock.cpp \
    DataTypes/image/CT_MultiMedia.cpp

HEADERS +=\
    DataTypes/basic_datatype.h \
    DataTypes/Color/CT_Color.h \
    DataTypes/Color/CT_ColorSpace.h \
    DataTypes/document/CT_CommonData.h \
    DataTypes/document/CT_DocInfo.h \
    DataTypes/document/DocBody.h \
    DataTypes/document/Document.h \
    DataTypes/document/OFD.h \
    DataTypes/image/CT_DrawParam.h \
    DataTypes/image/CT_GraphicUnit.h \
    DataTypes/image/CT_Image.h \
    DataTypes/image/CT_Path.h \
    DataTypes/page/CT_Layer.h \
    DataTypes/page/CT_PageArea.h \
    DataTypes/text/CT_Text.h \
    DataTypes/page/CT_PageBlock.h \
    DataTypes/page/CT_Pages.h \
    DataTypes/page/Page.h \
    ofd_parser.h \
    DataTypes/text/TextCode.h \
    ofd_global.h \
    ofd_writer.h \
    Loaders/ZipTool.h \
    ofdexceptions.h \
    DataTypes/document/CT_OutlineElem.h \
    DataTypes/document/CT_Outlines.h \
    DataTypes/document/CustomTags.h \
    DataTypes/document/Res.h \
    DataTypes/text/CT_Font.h \
    DataTypes/image/CT_MultiMedia.h


DESTDIR = ../bin     # 生成文件在这
MOC_DIR = ./moc     # Q_OBJECT 类转换后的文件
RCC_DIR = ./rcc     # .qrc 文件转换后存放路径
OBJECTS_DIR += ./tmp   # .obj 文件存放路径

INCLUDEPATH += $$PWD/../libs/quazip/includes \            # 引用quazip库
               $$PWD/../libs/jsoncpp
    # $$PWD表示当前pro对应的文件夹路径

FORMS    += mainwindow.ui \
    mainwindow.ui

unix {
    target.path = /usr/lib
    INSTALLS += target
    LIBS += -L$$PWD/../libs/quazip/libs -lquazip
}

win32 {
    LIBS += -L$$PWD/../libs/quazip/libs -lquazip

}
