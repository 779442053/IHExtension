//
//  IHAlertView.m
//  breadourne
//
//  Created by ___liangdahong on 2016/11/23.
//  Copyright © 2016年 http://idhong.com/. All rights reserved.
//

#import "IHAlertView.h"
#import "BlocksKit+UIKit.h"

@implementation IHAlertView

+ (void)ih_showAlertViewWithTitle:(NSString *)title
                          message:(NSString *)message
                otherButtonTitles:(NSArray <NSString *>*)otherButtonTitles
                       controller:(UIViewController *)controller
                          handler:(IHHandlerBlock)block {
    if ( [[UIDevice currentDevice] systemVersion].floatValue >= 8.0) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
        [otherButtonTitles enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [alertController addAction:[UIAlertAction actionWithTitle:obj style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                if (block) {
                    block(idx);
                }
            }]];
        }];
        [controller presentViewController:alertController animated:YES completion:nil];
    }else {
        [UIAlertView bk_showAlertViewWithTitle:title message:message cancelButtonTitle:nil otherButtonTitles:otherButtonTitles handler:^(UIAlertView *alertView, NSInteger buttonIndex) {
            if (block) {
                block(buttonIndex);
            }
        }];
    }
}

+ (void)ih_showAlertViewWithTitle:(NSString *)title
                otherButtonTitles:(NSArray <NSString *>*)otherButtonTitles
                       controller:(UIViewController *)controller
                          handler:(IHHandlerBlock)block {
    [self ih_showAlertViewWithTitle:title message:nil otherButtonTitles:otherButtonTitles controller:controller handler:block];
}

+ (void)ih_showAlertViewWithMessage:(NSString *)message
                  otherButtonTitles:(NSArray <NSString *>*)otherButtonTitles
                         controller:(UIViewController *)controller
                            handler:(IHHandlerBlock)block {
    [self ih_showAlertViewWithTitle:nil message:message otherButtonTitles:otherButtonTitles controller:controller handler:block];
}

+ (void)ih_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                         controller:(UIViewController *)controller
                  otherButtonTitles:(NSArray <NSString *>*)otherButtonTitles
                            handler:(IHHandlerBlock)block {
    [self ih_showActionSheetWithTitle:title message:message cancelButtonTitle:nil cancelHandler:nil controller:controller otherButtonTitles:otherButtonTitles handler:block];
}

+ (void)ih_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                  cancelButtonTitle:(NSString *)cancelButtonTitle
                      cancelHandler:(IHHandlerVoidBlock)cancelHandler
                         controller:(UIViewController *)controller
                  otherButtonTitles:(NSArray <NSString *>*)otherButtonTitles
                            handler:(IHHandlerBlock)block {
    if ([[UIDevice currentDevice] systemVersion].floatValue >= 8.0) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
        if (cancelButtonTitle) {
            [UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                if (cancelHandler) {
                    cancelHandler();
                }
            }];
        }
        [otherButtonTitles enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [alertController addAction:[UIAlertAction actionWithTitle:obj style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                if (block) {
                    block(idx);
                }
            }]];
        }];
        [controller presentViewController:alertController animated:YES completion:nil];
    }else {
        UIActionSheet *sheet = [UIActionSheet bk_actionSheetWithTitle:title];
        [sheet bk_setCancelButtonWithTitle:cancelButtonTitle handler:^{
            if (cancelHandler) {
                cancelHandler();
            }
        }];
        [otherButtonTitles enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [sheet bk_addButtonWithTitle:obj handler:^{
                if (block) {
                    block(idx);
                }
            }];
        }];
        [sheet showInView:controller.view];
    }
}

@end
