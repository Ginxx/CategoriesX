//
//  NSArray+Category.h
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Category)

@property (nonatomic, copy, readonly) NSArray *(^map)(id (^transform)(id element));

@property (nonatomic, copy, readonly) NSArray *(^filter)(BOOL (^isIncluded)(id element));

@property (nonatomic, copy, readonly) void (^forEach)(void (^predicate)(id element));

@property (nonatomic, assign, readonly) BOOL isEmpty;

@end
