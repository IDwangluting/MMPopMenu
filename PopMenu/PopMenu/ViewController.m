//
//  ViewController.m
//  PopMenu
//
//  Created by wangluting on 16/9/7.
//  Copyright © 2016年 wangluting. All rights reserved.
//

#import "ViewController.h"
#import "WWPopMenuView.h"

#define  ScreenHeight (int)[UIScreen mainScreen].bounds.size.height
#define ScreenWiidth  (int)[UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 50, ScreenWiidth, 50)];
    label.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:label];

    WWPopMenuView *popMenu=[[WWPopMenuView alloc]initWithMainImage:[UIImage imageNamed:@"start"]];
    
    [popMenu addAttachImage:[UIImage imageNamed:@"icon-email"] action:^(WWPopMenuView *popView, NSInteger tag) {
        label.text=[NSString stringWithFormat:@"选中了第%li个",tag];
    }];
    [popMenu addAttachImage:[UIImage imageNamed:@"icon-facebook"] action:^(WWPopMenuView *popView, NSInteger tag) {
        label.text=[NSString stringWithFormat:@"选中了第%li个",tag];
    }];
    [popMenu addAttachImage:[UIImage imageNamed:@"icon-twitter"] action:^(WWPopMenuView *popView, NSInteger tag) {
        label.text=[NSString stringWithFormat:@"选中了第%li个",tag];
    }];
    popMenu.center = CGPointMake(ScreenWiidth/2, ScreenHeight- 60);
    [self.view addSubview:popMenu];
}

- (BOOL)shouldAutorotate {
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
