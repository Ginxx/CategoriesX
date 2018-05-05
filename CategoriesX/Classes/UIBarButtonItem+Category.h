//
//  UIBarButtonItem+Category.h
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Category)

@property (nonatomic, copy, readonly) UIBarButtonItem *(^setFont)(UIFont *font, UIControlState state);

@property (nonatomic, copy, readonly) UIBarButtonItem *(^setTextColor)(UIColor *color, UIControlState state);

+ (instancetype)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action;

+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action;

+ (instancetype)itemWithCustomView:(UIView *)customView;

@end
