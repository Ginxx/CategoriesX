//
//  UIViewController+Category.h
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Category)

- (void)goBackAnimated:(BOOL)animated;

- (void)alertWithTitle:(NSString *)title
               message:(NSString *)message
        preferredStyle:(UIAlertControllerStyle)preferredStyle
           cancelTitle:(NSString *)cancelTitle
           otherTitles:(NSArray<NSString *> *)otherTitles
     completionHandler:(void (^)(NSInteger buttonIndex))completionHandler;

- (void)disableAdjustsScrollViewInsets:(UIScrollView *)scrollView;

@end
