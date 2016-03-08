//
//  LabelWithCircle.h
//  CustomUI
//
//  Created by victor zhang on 3/8/16.
//  Copyright © 2016 wei zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LabelWithCircle : UIView

@property (weak, nonatomic) UILabel *label;

- (void)addBorderColor:(UIColor *)borderColor;

- (void)setText:(NSString *)text withDiameter:(CGFloat)diameter backgroundColor:(UIColor *)backgroundColor;

@end
