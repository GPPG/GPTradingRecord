
//
//  GPTabBarController.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/10.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPTabBarController.h"
#import "GPMineController.h"
#import "GPAssetsController.h"
#import "GPReportController.h"
#import "GPNavigationController.h"

@interface GPTabBarController ()

@end

@implementation GPTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self configureTabBar];

    [self configureChildViewControllers];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)configureTabBar
{

    [[UITabBarItem appearanceWhenContainedIn:[GPTabBarController class], nil] setTitleTextAttributes:@{NSForegroundColorAttributeName :[UIColor colorWithRed:113/255.0 green:113/255.0 blue:113/255.0 alpha:1.0] } forState:UIControlStateNormal];
    
    [[UITabBarItem appearanceWhenContainedIn:[GPTabBarController class], nil] setTitleTextAttributes:@{NSForegroundColorAttributeName :GPTradingBlueColor } forState:UIControlStateSelected];
}


- (void)configureChildViewControllers{
    
    [self addAssetsController];
    
    [self addReportController];
    
    [self addMineController];
}

- (void)addAssetsController{
    
    UIEdgeInsets imageInsets = UIEdgeInsetsZero;
    UIOffset titlePosition = UIOffsetMake(0, -2);

    GPAssetsController *assetsVC = SBVC(GPAssetsController);
    
    [self addChildViewController:assetsVC title:@"资产" image:@"assets_off" selectedImage:@"" imageInsets:imageInsets titlePosition:titlePosition navControllerClass:[GPNavigationController class]];
}

- (void)addReportController{
    
    UIEdgeInsets imageInsets = UIEdgeInsetsZero;
    UIOffset titlePosition = UIOffsetMake(0, -2);
    
    GPReportController *reportVC = [[GPReportController alloc]init];
    
    [self addChildViewController:reportVC title:@"报表" image:@"report_off" selectedImage:@"" imageInsets:imageInsets titlePosition:titlePosition navControllerClass:[GPNavigationController class]];
    
}

- (void)addMineController{
    
    UIEdgeInsets imageInsets = UIEdgeInsetsZero;
    UIOffset titlePosition = UIOffsetMake(0, -2);
    
    GPMineController *mineVC = [[GPMineController alloc]init];
    [self addChildViewController:mineVC title:@"我的" image:@"mine_off" selectedImage:@"" imageInsets:imageInsets titlePosition:titlePosition navControllerClass:[GPNavigationController class]];
}

@end
