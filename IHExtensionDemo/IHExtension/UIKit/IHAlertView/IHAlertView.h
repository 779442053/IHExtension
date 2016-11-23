//
//  IHAlertView.h
//  breadourne
//
//  Created by ___liangdahong on 2016/11/23.
//  Copyright © 2016年 http://idhong.com/. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 UIAlertView
 UIActionSheet
 UIAlertController
 的封装
 基于BlocksKit
 */

typedef void(^IHHandlerBlock)(NSInteger buttonIndex);
typedef void(^IHHandlerVoidBlock)(void);

@interface IHAlertView : NSObject

// ----------------------------------------------------------------------
/**
 AlertView
 */
+ (void)ih_showAlertViewWithTitle:(NSString *)title
                          message:(NSString *)message
                otherButtonTitles:(NSArray <NSString *>*)otherButtonTitles
                       controller:(UIViewController *)controller
                          handler:(IHHandlerBlock)block;

/**
 AlertView 无message
 */
+ (void)ih_showAlertViewWithTitle:(NSString *)title
                otherButtonTitles:(NSArray <NSString *>*)otherButtonTitles
                       controller:(UIViewController *)controller
                          handler:(IHHandlerBlock)block;


/**
 AlertView 无title
 */
+ (void)ih_showAlertViewWithMessage:(NSString *)message
                  otherButtonTitles:(NSArray <NSString *>*)otherButtonTitles
                         controller:(UIViewController *)controller
                            handler:(IHHandlerBlock)block;
// ----------------------------------------------------------------------



// ----------------------------------------------------------------------
/**
 ActionSheet
 */
+ (void)ih_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                         controller:(UIViewController *)controller
                  otherButtonTitles:(NSArray <NSString *>*)otherButtonTitles
                            handler:(IHHandlerBlock)block;

/**
 ActionSheet 有取消按钮
 */
+ (void)ih_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                  cancelButtonTitle:(NSString *)cancelButtonTitle
                      cancelHandler:(IHHandlerVoidBlock)cancelHandler
                         controller:(UIViewController *)controller
                  otherButtonTitles:(NSArray <NSString *>*)otherButtonTitles
                            handler:(IHHandlerBlock)block;
// ----------------------------------------------------------------------

@end
