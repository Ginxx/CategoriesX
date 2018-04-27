//
//  NSDictionary+Category.m
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import "NSDictionary+Category.h"

@implementation NSDictionary (Category)

- (NSDictionary *(^)(id (^)(id)))mapValues
{
    return ^(id (^transform)(id)) {
        NSMutableDictionary *mDic = [NSMutableDictionary dictionary];
        [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            [mDic setObject:transform(obj) forKey:key];
        }];
        return mDic.copy;
    };
}

- (NSDictionary *(^)(BOOL (^)(id, id)))filter
{
    return ^(BOOL (^isIncluded)(id, id)) {
        NSMutableDictionary *mDic = [NSMutableDictionary dictionary];
        [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            if (isIncluded(key, obj)) {
                [mDic setObject:obj forKey:key];
            }
        }];
        return mDic.copy;
    };
}

- (void (^)(void (^)(id, id)))forEach
{
    return ^(void (^predicate)(id, id)) {
        [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            predicate(key, obj);
        }];
    };
}

- (BOOL)isEmpty
{
    return self.count == 0;
}

@end
