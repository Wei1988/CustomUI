//
//  LabelWithCircle.m
//  CustomUI
//
//  Created by victor zhang on 3/8/16.
//  Copyright © 2016 wei zhang. All rights reserved.
//

#import "LabelWithCircle.h"
#import "NSLayoutConstraint+convenience.h"
#import <QuartzCore/QuartzCore.h>

@implementation LabelWithCircle

- (instancetype)init {
    if (self = [super init]) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    [self setText:@"L" withDiameter:36 backgroundColor:[UIColor lightGrayColor]];
}

- (void)setText:(NSString *)text withDiameter:(CGFloat)diameter backgroundColor:(UIColor *)backgroundColor {
    //view
    self.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint pinHeightWithConstant:diameter forView:self];
    [NSLayoutConstraint pinWidthWithConstant:diameter forView:self];
    self.backgroundColor = backgroundColor;
    self.layer.cornerRadius = diameter / 2;
    //label
    UILabel *label = [[UILabel alloc] init];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    label.text = @"L";
    [self addSubview:label];
    self.label = label;
    [NSLayoutConstraint pinCenterXofView:self.label inSuperView:self];
    [NSLayoutConstraint pinCenterYofView:self.label inSuperView:self];
}

- (void)addBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = .5f;
}

@end
