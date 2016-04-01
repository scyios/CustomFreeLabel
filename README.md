使用方法:\r\n
由于是根据给定的label的宽度和以及label当中文本的字体,字号,行间距来计算高度,所以还需要设置label的origin\r\n
用法很简单,实现原理也很简单\r\n
用法:\r\n
labelInfo = [labelInfo boundingRectWithSize:CGSizeMake(200, 0)//只需要设置label的宽度即可 
                            withLineSpacing:lineSpacing //行间距
                                   withFont:UIFont//字体,字号 
                                   withText:text // 文本
                              withTextColor:UIColor //文本颜色
                   withLabelBackgroundColor:UIColor];// label颜色
由于是label的类目,所以必须要用label调用
