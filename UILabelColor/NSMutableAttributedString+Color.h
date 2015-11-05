//
//  NSMutableAttributedString+Color.h
//  UILabelColor
//
//  Created by luo.h on 15/11/5.
//  Copyright © 2015年 l.h. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>

@interface NSMutableAttributedString (Color)


/**
 *  添加文本颜色属性
 *
 *  @param color 文本颜色
 */
- (void)setTextColor:(UIColor*)color;
- (void)setTextColor:(UIColor*)color range:(NSRange)range;

/**
 *  添加文本字体属性
 *
 *  @param font 字体
 */
- (void)setTextFont:(UIFont *)font;
- (void)setTextFont:(UIFont *)font range:(NSRange)range;

/**
 *  添加文本字符间隔
 *
 *  @param characterSpacing 字符间隔
 */
- (void)setWordSpacing:(unichar)space;
- (void)setWordSpacing:(unichar)space range:(NSRange)range;


@end
