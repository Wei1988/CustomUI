//
//  NSLayoutConstraint+convenience.h
//  WZTextField
//
//  Created by victor zhang on 2/29/16.
//  Copyright © 2016 victor zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (convenience)

//custom pin subview in superview
+ (NSLayoutConstraint *)pinLeftWithConstant:(CGFloat)leftMargin forSubView:(UIView *)subView inSuperView:(UIView *)superView;
+ (NSLayoutConstraint *)pinRightWithConstant:(CGFloat)rightMargin forSubView:(UIView *)subView inSuperView:(UIView *)superView;
+ (NSLayoutConstraint *)pinTopWithConstant:(CGFloat)topMargin forSubView:(UIView *)subView inSuperView:(UIView *)superView;
+ (NSLayoutConstraint *)pinBottomWithConstant:(CGFloat)bottomMargin forSubView:(UIView *)subView inSuperView:(UIView *)superView;

//default pin subview in superview
+ (void)pinSubview:(UIView *)subView inSuperView:(UIView *)superView;
//custom pin subview in superview
+ (void)pinSubview:(UIView *)subView inSuperView:(UIView *)superView pinLeft:(BOOL)left leftConstraint:(CGFloat)leftMargin pinRight:(BOOL)right rightConstraint:(CGFloat)rightMargin pinTop:(BOOL)top topConstraint:(CGFloat)topMargin pinBottom:(BOOL)bottom bottomConstraint:(CGFloat)bottomContraint;

//pin width & height
+ (NSLayoutConstraint *)pinWidthWithConstant:(CGFloat)width forView:(UIView *)view;
+ (NSLayoutConstraint *)pinHeightWithConstant:(CGFloat)height forView:(UIView *)view;
+ (void)pinWidh:(BOOL)pinWidth Constant:(CGFloat)constant pinHeight:(BOOL)pinHeight Constant:(CGFloat)constant forView:(UIView *)view;

//pin subview to another subview
+ (NSLayoutConstraint *)pinLeftOfView:(UIView *)subView1 withConstant:(CGFloat)margin ToRightOfView:(UIView *)subView2;
+ (NSLayoutConstraint *)pinTopOfView:(UIView *)subView1 withConstrant:(CGFloat)margin toBottomOfView:(UIView *)subView2;

//pin centerX/centerY
+ (NSLayoutConstraint *)pinCenterXofView:(UIView *)subview inSuperView:(UIView *)superView;
+ (NSLayoutConstraint *)pinCenterYofView:(UIView *)subview inSuperView:(UIView *)superView;

@end
