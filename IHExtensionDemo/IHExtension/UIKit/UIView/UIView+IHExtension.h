//
//  UIView+IHExtension.h
//  IHExtensionDemo
//
//  Created by __liangdahong on 2016/11/17.
//  Copyright © 2016年 http://idhong.com/. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (IHExtension)
@property (nonatomic, assign, setter=bm_setX:)        CGFloat bm_x;
@property (nonatomic, assign, setter=bm_setY:)        CGFloat bm_y;
@property (nonatomic, assign, setter=bm_setWidth:)    CGFloat bm_width;
@property (nonatomic, assign, setter=bm_setHeight:)   CGFloat bm_height;
@property (nonatomic, assign, setter=bm_setSize:)     CGSize  bm_size;
@property (nonatomic, assign, setter=bm_setOrigin:)   CGPoint bm_origin;
@property (nonatomic, assign, setter=bm_setCenterX:)  CGFloat bm_centerX;
@property (nonatomic, assign, setter=bm_setCenterY:)  CGFloat bm_centerY;
@property (nonatomic, assign, setter=bm_setLayerCornerRadius:) CGFloat bm_layerCornerRadius;

@end
