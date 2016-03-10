
//  CustomUIViewController.m
//  CustomUI
//
//  Created by victor zhang on 3/7/16.
//  Copyright © 2016 wei zhang. All rights reserved.
//

#import "CustomUIViewController.h"
#import "NSLayoutConstraint+convenience.h"
#import "LabelWithCircle.h"
#import "WZCheckBox.h"

@interface CustomUIViewController ()

@end

@implementation CustomUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setupView {
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.title = @"test custom UI";
    
    //1. add label with background circle
    LabelWithCircle *labelCircle = [[LabelWithCircle alloc] init];
    labelCircle.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:labelCircle];
    [NSLayoutConstraint pinLeftWithConstant:10 forSubView:labelCircle inSuperView:self.view];
    [NSLayoutConstraint pinTopWithConstant:10 forSubView:labelCircle inSuperView:self.view];
    
    //2. add check box
    WZCheckBox *checkboxView = [[WZCheckBox alloc] init];
    checkboxView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:checkboxView];
    [NSLayoutConstraint pinLeftOfView:checkboxView withConstant:50 ToRightOfView:labelCircle];
    [NSLayoutConstraint pinTopWithConstant:20 forSubView:checkboxView inSuperView:self.view];
    
}

@end
