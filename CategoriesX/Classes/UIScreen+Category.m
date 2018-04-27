//
//  UIScreen+Category.m
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import "UIScreen+Category.h"

@implementation UIScreen (Category)

+ (CGFloat)width
{
    return self.mainScreen.bounds.size.width;
}

+ (CGFloat)height
{
    return self.mainScreen.bounds.size.height;
}

@end
