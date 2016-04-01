//
//  UILabel+StringFrame.h
//  CareVoice
//
//  Created by 石传洋 on 16/3/31.
//  Copyright © 2016年 CareVoice. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (StringFrame)
// 直接返回需要的label
- (UILabel *)boundingRectWithSize:(CGSize)size// label的长宽
                  withLineSpacing:(CGFloat)spacing// 行间距
                         withFont:(UIFont *)textFont// 字号 和字体
                         withText:(NSString *)text// 文本内容
                    withTextColor:(UIColor *)textColor// 文本颜色
         withLabelBackgroundColor:(UIColor *)backgroundColor;// label的背景色;

// 返回设置的文本字体的高度
- (CGSize)boundingRectWithSize:(CGSize)size// label的长宽
                  withLineSpacing:(CGFloat)spacing// 行间距
                         withFont:(UIFont *)textFont// 字号 和字体
                        withText:(NSString *)text;// 文本内容
@end
