//
//  UIView+IHExtension.m
//  IHExtensionDemo
//
//  Created by __liangdahong on 2016/11/17.
//  Copyright © 2016年 http://idhong.com/. All rights reserved.
//

#import "UIView+IHExtension.h"

@implementation UIView (IHExtension)

- (void)bm_setX:(CGFloat)bm_x {
    CGRect frame = self.frame;
    frame.origin.x = bm_x;
    self.frame = frame;
}
- (CGFloat)bm_x {
    return self.frame.origin.x;
}

- (void)bm_setY:(CGFloat)bm_y {
    CGRect frame = self.frame;
    frame.origin.y = bm_y;
    self.frame = frame;
}
- (CGFloat)bm_y {
    return self.frame.origin.y;
}

- (void)bm_setWidth:(CGFloat)bm_width {
    CGRect frame = self.frame;
    frame.size.width = bm_width;
    self.frame = frame;
}
- (CGFloat)bm_width {
    return self.frame.size.width;
}

- (void)bm_setHeight:(CGFloat)bm_height {
    CGRect frame = self.frame;
    frame.size.height = bm_height;
    self.frame = frame;
}
- (CGFloat)bm_height {
    return self.frame.size.height;
}

- (void)bm_setSize:(CGSize)bm_size {
    CGRect frame = self.frame;
    frame.size = bm_size;
    self.frame = frame;
}
- (CGSize)bm_size {
    return self.frame.size;
}
- (void)bm_setOrigin:(CGPoint)bm_origin {
    CGRect frame = self.frame;
    frame.origin = bm_origin;
    self.frame = frame;
}
- (CGPoint)bm_origin {
    return self.frame.origin;
}

- (void)bm_setCenterX:(CGFloat)bm_centerX {
    CGPoint center = self.center;
    center.x = bm_centerX;
    self.center = center;
}

- (CGFloat)bm_centerX {
    return self.center.x;
}

- (void)bm_setCenterY:(CGFloat)bm_centerY {
    CGPoint center = self.center;
    center.y = bm_centerY;
    self.center = center;
}
- (CGFloat)bm_centerY {
    return self.center.y;
}
- (CGFloat)bm_layerCornerRadius {
    return self.layer.cornerRadius;
}
- (void)bm_setLayerCornerRadius:(CGFloat)bm_layerCornerRadius {
    self.layer.cornerRadius = bm_layerCornerRadius;
    self.clipsToBounds = YES;
}

@end
