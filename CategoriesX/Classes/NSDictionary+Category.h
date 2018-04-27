//
//  NSDictionary+Category.h
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Category)

@property (nonatomic, copy, readonly) NSDictionary *(^mapValues)(id (^transform)(id value));

@property (nonatomic, copy, readonly) NSDictionary *(^filter)(BOOL (^isIncluded)(id key, id value));

@property (nonatomic, copy, readonly) void (^forEach)(void (^predicate)(id key, id value));

@property (nonatomic, assign, readonly) BOOL isEmpty;

@end
