//
//  UIColor+Category.h
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Category)

+ (UIColor *(^)(NSString *hexString))hex;

@property (nonatomic, copy, readonly) UIColor *(^alpha)(CGFloat alpha);

@end
