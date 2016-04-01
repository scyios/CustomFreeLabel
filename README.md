CustomFreeLabel
==================
###介绍:
由于是根据给定的label的宽度和以及label当中文本的字体,字号,行间距来计算高度,所以还需要设置label的origin<br>
用法很简单,实现原理也很简单<br>

####用法:<br>
labelInfo = [labelInfo boundingRectWithSize:CGSizeMake(200, 0)//只需要设置label的宽度即可<br> 
                             withLineSpacing:lineSpacing //行间距<br>
                                    withFont:UIFont//字体,字号<br>
                                    withText:text // 文本<br>
                                withTextColor:UIColor //文本颜色<br>
                    withLabelBackgroundColor:UIColor];// label颜色<br>
由于是label的类目,所以必须要用label调用<br>
