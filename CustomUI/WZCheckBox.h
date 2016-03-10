//
//  WZCheckBox.h
//  CustomUI
//
//  Created by victor zhang on 3/8/16.
//  Copyright © 2016 wei zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WZCheckBox : UIControl

@property (weak, nonatomic) UILabel *instructionLabel;
@property (weak, nonatomic) UIImageView *checkBoxImageView;

- (instancetype)checkBoxWithText:(NSString *)introductionText;

@end
