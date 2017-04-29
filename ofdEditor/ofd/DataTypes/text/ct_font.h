#ifndef CT_FONT_H
#define CT_FONT_H
#include "../basic_datatype.h"

#include "../../ofd_global.h"  // 生成库文件需要

class OFDSHARED_EXPORT CT_Base { //？？？？？？？？？？？？？

};

//******************************************
class OFDSHARED_EXPORT CT_Font : public CT_Base {    //字体声明类型
    //属性
    string font_name;   //字体名
    string family_name; //字体族名
    string charset;     //字符集
    bool italic;        //是否斜体
    bool bold;          //是否粗体
};

#endif // CT_FONT_H
