//
//  NSString+Category.h
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Category)

@property (nonatomic, assign, readonly) BOOL isEmpty;

@property (nonatomic, assign, readonly) BOOL isBlank;

- (UIImage *)toImage;

- (NSURL *)toURL;

@end
