//
//  UIColor+Category.m
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import "UIColor+Category.h"

@implementation UIColor (Category)

+ (UIColor *(^)(NSString *))hex
{
    return ^(NSString *hexString) {
        unsigned rgbValue = 0;
        hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
        NSScanner *scanner = [NSScanner scannerWithString:hexString];
        [scanner scanHexInt:&rgbValue];
        return [[self class] colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0
                                    green:((rgbValue & 0xFF00) >> 8) / 255.0
                                     blue:(rgbValue & 0xFF) / 255.0
                                    alpha:1.0];
    };
}

- (UIColor *(^)(CGFloat))alpha
{
    return ^(CGFloat alpha) {
        return [self colorWithAlphaComponent:alpha];
    };
}

@end
