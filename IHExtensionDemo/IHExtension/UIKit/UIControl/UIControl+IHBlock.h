//
//  UIControl+IHBlock.h
//  IHExtensionDemo
//
//  Created by __liangdahong on 2016/11/17.
//  Copyright © 2016年 http://idhong.com/. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (IHBlock)

- (void)bm_touchDown:          (dispatch_block_t)eventBlock;
- (void)bm_touchDownRepeat:    (dispatch_block_t)eventBlock;
- (void)bm_touchDragInside:    (dispatch_block_t)eventBlock;
- (void)bm_touchDragOutside:   (dispatch_block_t)eventBlock;
- (void)bm_touchDragEnter:     (dispatch_block_t)eventBlock;
- (void)bm_touchDragExit:      (dispatch_block_t)eventBlock;
- (void)bm_touchUpInside:      (dispatch_block_t)eventBlock;
- (void)bm_touchUpOutside:     (dispatch_block_t)eventBlock;
- (void)bm_touchCancel:        (dispatch_block_t)eventBlock;
- (void)bm_valueChanged:       (dispatch_block_t)eventBlock;
- (void)bm_editingDidBegin:    (dispatch_block_t)eventBlock;
- (void)bm_editingChanged:     (dispatch_block_t)eventBlock;
- (void)bm_editingDidEnd:      (dispatch_block_t)eventBlock;
- (void)bm_editingDidEndOnExit:(dispatch_block_t)eventBlock;

@end
