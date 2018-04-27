//
//  NSString+Category.m
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import "NSString+Category.h"

@implementation NSString (Category)

- (BOOL)isEmpty
{
    return self.length == 0;
}

- (BOOL)isBlank
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length == 0
    || [self isKindOfClass:[NSNull class]]
    || [self isEqual:[NSNull null]];
}

- (UIImage *)toImage
{
    return [UIImage imageNamed:self];
}

- (NSURL *)toURL
{
    return [NSURL URLWithString:self];
}

@end
