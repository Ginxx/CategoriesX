//
//  UIViewController+Category.m
//  Category
//
//  Created by GorXion on 2018/4/27.
//  Copyright © 2018年 gaoX. All rights reserved.
//

#import "UIViewController+Category.h"

@implementation UIViewController (Category)

- (void)goBackAnimated:(BOOL)animated
{
    if (self.presentingViewController) {
        if (self.navigationController.viewControllers.count > 1) {
            [self.navigationController popViewControllerAnimated:animated];
        }
        else {
            [self dismissViewControllerAnimated:animated completion:nil];
        }
    }
    else {
        [self.navigationController popViewControllerAnimated:animated];
    }
}

- (void)alertWithTitle:(NSString *)title
               message:(NSString *)message
        preferredStyle:(UIAlertControllerStyle)preferredStyle
           cancelTitle:(NSString *)cancelTitle
           otherTitles:(NSArray<NSString *> *)otherTitles
     completionHandler:(void (^)(NSInteger buttonIndex))completionHandler
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    if (cancelTitle) {
        [alert addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            if (completionHandler) {
                completionHandler(0);
            }
        }]];
    }
    [otherTitles enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [alert addAction:[UIAlertAction actionWithTitle:obj style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            if (completionHandler) {
                completionHandler(idx + 1);
            }
        }]];
    }];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)disableAdjustsScrollViewInsets:(UIScrollView *)scrollView
{
    if (@available(iOS 11.0, *)) {
        scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    } else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
}

@end
