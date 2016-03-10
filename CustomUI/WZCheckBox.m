//
//  WZCheckBox.m
//  CustomUI
//
//  Created by victor zhang on 3/8/16.
//  Copyright © 2016 wei zhang. All rights reserved.
//

#import "WZCheckBox.h"
#import "NSLayoutConstraint+convenience.h"

static NSString *const UncheckedImageName = @"CheckBox-unselected.png";
static NSString *const CheckedImageName = @"CheckBox.png";
static CGFloat const CheckBoxImageWidth = 25.f;
static CGFloat const CheckBoxImageHeight = 25.f;
static CGFloat const FaultTolerance = 20.f;

@interface WZCheckBox ()

@property (assign, nonatomic) BOOL isChecked;

@end

@implementation WZCheckBox

#pragma mark - init
- (instancetype)init {
    if (self = [super init]) {
        [self setupView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setupView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    self.isChecked = NO;
    
    //1. checkbox image view
    UIImageView *checkBoxImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    checkBoxImageView.userInteractionEnabled = YES;
    checkBoxImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self setState:self.isChecked];
    [self addSubview:checkBoxImageView];
    self.checkBoxImageView = checkBoxImageView;
    [NSLayoutConstraint pinWidh:YES Constant:CheckBoxImageWidth pinHeight:YES Constant:CheckBoxImageHeight forView:self.checkBoxImageView];
    [NSLayoutConstraint pinSubview:self.checkBoxImageView inSuperView:self pinLeft:YES leftConstraint:0 pinRight:NO rightConstraint:0 pinTop:YES topConstraint:0 pinBottom:YES bottomConstraint:0];
    
    //2. checkbox instruction text
    UILabel *instructionLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    instructionLabel.translatesAutoresizingMaskIntoConstraints = NO;
    instructionLabel.text = @"test instructions";
    [self addSubview:instructionLabel];
    self.instructionLabel = instructionLabel;
    [NSLayoutConstraint pinRightWithConstant:0 forSubView:self.instructionLabel inSuperView:self];
    [NSLayoutConstraint pinCenterYofView:self.instructionLabel inSuperView:self];
    [NSLayoutConstraint pinLeftOfView:self.instructionLabel withConstant:10.f ToRightOfView:self.checkBoxImageView];
    
//    //3. tap gesture -- or use uitouch to handle
//    UITapGestureRecognizer *tapGesteure = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
//    [self addGestureRecognizer:tapGesteure];
}

- (instancetype)checkBoxWithText:(NSString *)introductionText {
    WZCheckBox *checkbox = [[WZCheckBox alloc] init];
    checkbox.instructionLabel.text = introductionText;
    return checkbox;
}

- (void)setState:(BOOL)isChecked {
    if (isChecked) {
        self.checkBoxImageView.image = [UIImage imageNamed:CheckedImageName];
    } else {
        self.checkBoxImageView.image = [UIImage imageNamed:UncheckedImageName];
    }
}

//#pragma mark - handle tap gesture
//- (void)handleTapGesture:(UITapGestureRecognizer *)recongizer {
//    self.isChecked = !self.isChecked;
//    [self setState:self.isChecked];
//}

#pragma mark - handle touches
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *endToudh = [touches anyObject];
    if ([self touchIsOutside:endToudh]) {
        [self sendActionsForControlEvents:UIControlEventTouchUpOutside];
    } else {
        self.isChecked = !self.isChecked;
        [self setState:self.isChecked];
        [self sendActionsForControlEvents:UIControlEventTouchUpInside];
    }
    
    
}

- (BOOL)touchIsOutside:(UITouch *)touch {
    CGPoint endPoint = [touch locationInView:self];
    if (endPoint.x < -FaultTolerance || endPoint.y < -FaultTolerance || endPoint.x > self.frame.size.width + FaultTolerance || endPoint.y > self.frame.size.height + FaultTolerance) {
        return YES;
    } else {
        return NO;
    }
}

@end
