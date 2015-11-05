//
//  NSMutableAttributedString+Color.m
//  UILabelColor
//
//  Created by luo.h on 15/11/5.
//  Copyright © 2015年 l.h. All rights reserved.
//

#import "NSMutableAttributedString+Color.h"

@implementation NSMutableAttributedString (Color)


- (void)setTextColor:(UIColor*)color
{
    [self setTextColor:color range:NSMakeRange(0, [self length])];
}


- (void)setTextColor:(UIColor*)color range:(NSRange)range
{
    if (color.CGColor)
    {
        [self removeAttribute:(NSString *)kCTForegroundColorAttributeName range:range];
        [self addAttribute:(NSString *)kCTForegroundColorAttributeName
                     value:(id)color.CGColor
                     range:range];
    }
}

- (void)setTextFont:(UIFont *)font
{
    [self setTextFont:font range:NSMakeRange(0, [self length])];
}

- (void)setTextFont:(UIFont *)font range:(NSRange)range
{
    if (font)
    {
        [self removeAttribute:(NSString*)kCTFontAttributeName range:range];
        
        CTFontRef fontRef = CTFontCreateWithName((CFStringRef)font.fontName, font.pointSize, nil);
        if (nil != fontRef)
        {
            [self addAttribute:(NSString *)kCTFontAttributeName value:(__bridge id)fontRef range:range];
            CFRelease(fontRef);
        }
    }

}

- (void)setWordSpacing:(unichar)space
{
    [self setWordSpacing:space range:NSMakeRange(0, self.length)];
}

- (void)setWordSpacing:(unichar)space range:(NSRange)range
{
    [self removeAttribute:(id)kCTKernAttributeName range:range];
    
    CFNumberRef num =  CFNumberCreate(kCFAllocatorDefault,kCFNumberSInt8Type,&space);
    [self addAttribute:(id)kCTKernAttributeName value:(__bridge id)num range:range];
    CFRelease(num);

}

@end
