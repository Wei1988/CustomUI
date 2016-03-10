//
//  WZCheckBox.m
//  CustomUI
//
//  Created by victor zhang on 3/8/16.
//  Copyright © 2016 wei zhang. All rights reserved.
//

#import "WZCheckBox.h"
#import "NSLayoutConstraint+convenience.h"

static NSString *const uncheckedImageName = @"CheckBox-unselected.png";
static NSString *const checkedImageName = @"CheckBox.png";
static CGFloat const checkBoxImageWidth = 25.f;
static CGFloat const checkBoxImageHeight = 25.f;

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
    [NSLayoutConstraint pinWidh:YES Constant:checkBoxImageWidth pinHeight:YES Constant:checkBoxImageHeight forView:self.checkBoxImageView];
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
}

- (void)setState:(BOOL)isChecked {
    if (isChecked) {
        self.checkBoxImageView.image = [UIImage imageNamed:checkedImageName];
    } else {
        self.checkBoxImageView.image = [UIImage imageNamed:uncheckedImageName];
    }
}



@end
