//
//  NSLayoutConstraint+convenience.m
//  WZTextField
//
//  Created by victor zhang on 2/29/16.
//  Copyright © 2016 victor zhang. All rights reserved.
//

#import "NSLayoutConstraint+convenience.h"

static const CGFloat PaddingDefault = 20.f;

@implementation NSLayoutConstraint (convenience)

//pin left
+ (NSLayoutConstraint *)pinLeftWithConstant:(CGFloat)leftMargin forSubView:(UIView *)subView inSuperView:(UIView *)superView {
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeLeading multiplier:1.0 constant:leftMargin];
    left.priority = 999.f;
    left.active = YES;
    return left;
}

//pin right
+ (NSLayoutConstraint *)pinRightWithConstant:(CGFloat)rightMargin forSubView:(UIView *)subView inSuperView:(UIView *)superView {
    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:-rightMargin];
    right.priority = 999.f;
    right.active = YES;
    return right;
}

//pin top
+ (NSLayoutConstraint *)pinTopWithConstant:(CGFloat)topMargin forSubView:(UIView *)subView inSuperView:(UIView *)superView {
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeTop multiplier:1.0 constant:topMargin];
    top.priority = 999.f;
    top.active = YES;
    return top;
}

//pin bottom
+ (NSLayoutConstraint *)pinBottomWithConstant:(CGFloat)bottomMargin forSubView:(UIView *)subView inSuperView:(UIView *)superView {
    NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-bottomMargin];
    bottom.priority = 999.f;
    bottom.active = YES;
    return bottom;
}

//default pin subview in superview
+ (void)pinSubview:(UIView *)subView inSuperView:(UIView *)superView {
    [NSLayoutConstraint pinLeftWithConstant:0 forSubView:subView inSuperView:superView];
    [NSLayoutConstraint pinRightWithConstant:0 forSubView:subView inSuperView:superView];
    [NSLayoutConstraint pinTopWithConstant:0 forSubView:subView inSuperView:superView];
    [NSLayoutConstraint pinBottomWithConstant:0 forSubView:subView inSuperView:superView];
}

//custom pin subview in superview
+ (void)pinSubview:(UIView *)subView inSuperView:(UIView *)superView pinLeft:(BOOL)left leftConstraint:(CGFloat)leftMargin pinRight:(BOOL)right rightConstraint:(CGFloat)rightMargin pinTop:(BOOL)top topConstraint:(CGFloat)topMargin pinBottom:(BOOL)bottom bottomConstraint:(CGFloat)bottomContraint {
    if (left) {
        [NSLayoutConstraint pinLeftWithConstant:leftMargin forSubView:subView inSuperView:superView];
    }
    if (right) {
        [NSLayoutConstraint pinRightWithConstant:rightMargin forSubView:subView inSuperView:superView];
    }
    if (top) {
        [NSLayoutConstraint pinTopWithConstant:topMargin forSubView:subView inSuperView:superView];
    }
    if (bottom) {
        [NSLayoutConstraint pinBottomWithConstant:bottomContraint forSubView:subView inSuperView:superView];
    }
    
}

//pin width
+ (NSLayoutConstraint *)pinWidthWithConstant:(CGFloat)width forView:(UIView *)view {
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:width];
    widthConstraint.priority = 999.f;
    widthConstraint.active = YES;
    return widthConstraint;
}

//pin height
+ (NSLayoutConstraint *)pinHeightWithConstant:(CGFloat)height forView:(UIView *)view {
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:height];
    heightConstraint.priority = 999.f;
    heightConstraint.active = YES;
    return heightConstraint;
}

//pin width/height
+ (void)pinWidh:(BOOL)pinWidth Constant:(CGFloat)widthConstant pinHeight:(BOOL)pinHeight Constant:(CGFloat)heightConstant forView:(UIView *)view {
    if (pinHeight) {
        [NSLayoutConstraint pinWidthWithConstant:widthConstant forView:view];
    }
    if (pinWidth) {
        [NSLayoutConstraint pinHeightWithConstant:heightConstant forView:view];
    }
}

//pin horizontal spacing
+ (NSLayoutConstraint *)pinLeftOfView:(UIView *)subView1 withConstant:(CGFloat)margin ToRightOfView:(UIView *)subView2 {
    NSLayoutConstraint *horizontalConstraint = [NSLayoutConstraint constraintWithItem:subView1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:subView2 attribute:NSLayoutAttributeRight multiplier:1.0 constant:margin];
    horizontalConstraint.priority = 999.f;
    horizontalConstraint.active = YES;
    return horizontalConstraint;
}

//pin vertical spacing
+ (NSLayoutConstraint *)pinTopOfView:(UIView *)subView1 withConstrant:(CGFloat)margin toBottomOfView:(UIView *)subView2 {
    NSLayoutConstraint *verticalConstraint = [NSLayoutConstraint constraintWithItem:subView1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:subView2 attribute:NSLayoutAttributeBottom multiplier:1.0 constant:margin];
    verticalConstraint.priority = 999.f;
    verticalConstraint.active = YES;
    return verticalConstraint;
}

//pin center X
+ (NSLayoutConstraint *)pinCenterXofView:(UIView *)subview inSuperView:(UIView *)superView {
    NSLayoutConstraint *centerX = [NSLayoutConstraint constraintWithItem:subview attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
    centerX.priority = 999.f;
    centerX.active = YES;
    return centerX;
}

//pin center Y
+ (NSLayoutConstraint *)pinCenterYofView:(UIView *)subview inSuperView:(UIView *)superView {
    NSLayoutConstraint *centerY = [NSLayoutConstraint constraintWithItem:subview attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
    centerY.priority = 999.f;
    centerY.active = YES;
    return centerY;
}









@end
