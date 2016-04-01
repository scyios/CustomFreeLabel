//
//  UILabel+StringFrame.m
//  CareVoice
//
//  Created by 石传洋 on 16/3/31.
//  Copyright © 2016年 CareVoice. All rights reserved.
//

#import "UILabel+StringFrame.h"

@implementation UILabel (StringFrame)
- (UILabel *)boundingRectWithSize:(CGSize)size// label的长宽
                  withLineSpacing:(CGFloat)spacing// 行间距
                         withFont:(UIFont *)textFont// 字号 和字体
                         withText:(NSString *)text// 文本内容
                    withTextColor:(UIColor *)textColor// 文本颜色
         withLabelBackgroundColor:(UIColor *)backgroundColor// label的背景色;
{
    //创建UILabel
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, size.width, 0)];
    //自动换行
    label.numberOfLines = 0;
    label.textColor = textColor;
    label.backgroundColor = backgroundColor;
    label.font = textFont;
    //设置label内容宽度
    CGFloat textWidth = label.frame.size.width;
    //创建NSMutableAttributedString实例，并将text传入
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc]initWithString:text];
    //设置字号
    
    //创建NSMutableParagraphStyle实例
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc]init];
    
    //设置行距
    [style setLineSpacing:spacing];
    
    //判断内容长度是否大于Label内容宽度，如果不大于，则设置内容宽度为行宽（内容如果小于行宽，Label长度太短，如果Label有背景颜色，将影响布局效果）
    NSInteger leng = textWidth;
    if (attStr.length < textWidth) {
        leng = attStr.length;
    }
    //根据给定长度与style设置attStr式样
    [attStr addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, leng)];
    //Label获取attStr式样
    label.attributedText = attStr;
    //Label自适应大小
    [label sizeToFit];
    //设置Label高度
    return label;
}

// 返回设置的文本字体的高度
- (CGSize)boundingRectWithSize:(CGSize)size// label的长宽
                 withLineSpacing:(CGFloat)spacing// 行间距
                        withFont:(UIFont *)textFont// 字号 和字体
                        withText:(NSString *)text// 文本内容
{
    //创建UILabel
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, size.width, 0)];
    //自动换行
    label.numberOfLines = 0;
    label.font = textFont;
    //设置label内容宽度
    CGFloat textWidth = label.frame.size.width;
    //创建NSMutableAttributedString实例，并将text传入
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc]initWithString:text];
    //设置字号
    
    //创建NSMutableParagraphStyle实例
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc]init];
    
    //设置行距
    [style setLineSpacing:spacing];
    
    //判断内容长度是否大于Label内容宽度，如果不大于，则设置内容宽度为行宽（内容如果小于行宽，Label长度太短，如果Label有背景颜色，将影响布局效果）
    NSInteger leng = textWidth;
    if (attStr.length < textWidth) {
        leng = attStr.length;
    }
    //根据给定长度与style设置attStr式样
    [attStr addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, leng)];
    //Label获取attStr式样
    label.attributedText = attStr;
    //Label自适应大小
    [label sizeToFit];
    CGSize needSize = CGSizeMake(size.width, label.size.height);
    return needSize;
}

@end
