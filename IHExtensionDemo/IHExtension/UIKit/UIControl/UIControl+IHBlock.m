//
//  UIControl+IHBlock.m
//  IHExtensionDemo
//
//  Created by __liangdahong on 2016/11/17.
//  Copyright © 2016年 http://idhong.com/. All rights reserved.
//

#import "UIControl+IHBlock.h"
#import <objc/runtime.h>

#define UICONTROL_EVENT(methodName, eventName)                                 \
-(void)methodName : (void (^)(void))eventBlock {                               \
objc_setAssociatedObject(self, @selector(methodName:), eventBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);\
[self addTarget:self                                                        \
action:@selector(methodName##Action:)                                       \
forControlEvents:UIControlEvent##eventName];                                \
}                                                                               \
-(void)methodName##Action:(id)sender {                                          \
void (^block)() = objc_getAssociatedObject(self, @selector(methodName:));   \
if (block) {                                                                \
block();                                                                \
}                                                                           \
}

@implementation UIControl (IHBlock)

UICONTROL_EVENT(bm_touchDown,                     TouchDown)
UICONTROL_EVENT(bm_touchDownRepeat,         TouchDownRepeat)
UICONTROL_EVENT(bm_touchDragInside,         TouchDragInside)
UICONTROL_EVENT(bm_touchDragOutside,       TouchDragOutside)
UICONTROL_EVENT(bm_touchDragEnter,           TouchDragEnter)
UICONTROL_EVENT(bm_touchDragExit,             TouchDragExit)
UICONTROL_EVENT(bm_touchUpInside,             TouchUpInside)
UICONTROL_EVENT(bm_touchUpOutside,           TouchUpOutside)
UICONTROL_EVENT(bm_touchCancel,                 TouchCancel)
UICONTROL_EVENT(bm_valueChanged,               ValueChanged)
UICONTROL_EVENT(bm_editingDidBegin,         EditingDidBegin)
UICONTROL_EVENT(bm_editingChanged,           EditingChanged)
UICONTROL_EVENT(bm_editingDidEnd,             EditingDidEnd)
UICONTROL_EVENT(bm_editingDidEndOnExit, EditingDidEndOnExit)
@end
