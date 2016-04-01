//
//  NSString+stringHeigh.h
//  CareVoice
//
//  Created by 石传洋 on 16/4/1.
//  Copyright © 2016年 CareVoice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (stringHeigh)
// 返回设置的文本字体的高度
- (CGSize)boundingRectWithSize:(CGSize)size// label的长宽
               withLineSpacing:(CGFloat)spacing// 行间距
                      withFont:(UIFont *)textFont// 字号 和字体
                      withText:(NSString *)text;// 文本内容
@end
