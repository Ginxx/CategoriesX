//
//  UIBarButtonItem+Category.m
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import "UIBarButtonItem+Category.h"

@implementation UIBarButtonItem (Category)

- (UIBarButtonItem *(^)(UIFont *, UIControlState))setFont
{
    return ^(UIFont *font, UIControlState state) {
        NSMutableDictionary *attrs = [self titleTextAttributesForState:state].mutableCopy ?: @{}.mutableCopy;
        [attrs setObject:font forKey:NSFontAttributeName];
        [self setTitleTextAttributes:attrs forState:state];
        return self;
    };
}

- (UIBarButtonItem *(^)(UIColor *, UIControlState))setTextColor
{
    return ^(UIColor *color, UIControlState state) {
        NSMutableDictionary *attrs = [self titleTextAttributesForState:state].mutableCopy ?: @{}.mutableCopy;
        [attrs setObject:color forKey:NSForegroundColorAttributeName];
        [self setTitleTextAttributes:attrs forState:state];
        return self;
    };
}

+ (instancetype)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action
{
    UIImage *originalImage = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return [[UIBarButtonItem alloc] initWithImage:originalImage style:UIBarButtonItemStylePlain target:target action:action];
}

+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    return [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:target action:action];
}

+ (instancetype)itemWithCustomView:(UIView *)customView
{
    return [[UIBarButtonItem alloc] initWithCustomView:customView];
}

@end
