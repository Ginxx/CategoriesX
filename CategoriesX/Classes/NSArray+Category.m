//
//  NSArray+Category.m
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import "NSArray+Category.h"

@implementation NSArray (Category)

- (NSArray *(^)(id (^)(id)))map
{
    return ^(id (^transform)(id)) {
        NSMutableArray *mArr = [NSMutableArray array];
        for (id obj in self) {
            [mArr addObject:transform(obj)];
        }
        return mArr.copy;
    };
}

- (NSArray *(^)(BOOL (^)(id)))filter
{
    return ^(BOOL (^isIncluded)(id)) {
        NSMutableArray *mArr = [NSMutableArray array];
        for (id obj in self) {
            if (isIncluded(obj)) {
                [mArr addObject:obj];
            }
        }
        return mArr.copy;
    };
}

- (void (^)(void (^)(id)))forEach
{
    return ^(void (^predicate)(id)) {
        for (id obj in self) {
            predicate(obj);
        }
    };
}

- (BOOL)isEmpty
{
    return self.count == 0;
}

@end
