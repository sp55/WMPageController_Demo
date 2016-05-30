//
//  HomeViewController.m
//  WMPageController_Demo
//
//  Created by admin on 16/5/30.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "HomeViewController.h"
#import "H_1_ViewController.h"
#import "H_2_ViewController.h"
#import "H_3_ViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

+ (UINavigationController *)defaultFindUINavigationController {
    static UINavigationController *navi = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        HomeViewController *findVC = [[HomeViewController alloc] initWithViewControllerClasses:[self ViewControllerClasses] andTheirTitles:@[@"推荐",@"分类",@"榜单"]];
        //        WMPageController的设置
        findVC.menuViewStyle = WMMenuViewStyleLine;
        // 设置每个item的宽
        findVC.itemsWidths = @[@(kWindowW/3),@(kWindowW/3),@(kWindowW/3)];
        findVC.progressColor = [UIColor redColor];
        findVC.progressHeight = 3.5;
        navi = [[UINavigationController alloc] initWithRootViewController:findVC];
    });
    return navi;
}

// 存响应的控制器
+ (NSArray *)ViewControllerClasses {
    return @[[H_1_ViewController class],[H_2_ViewController class] ,[H_3_ViewController class]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
    
    NSLog(@"%@",NSStringFromCGPoint(self.scrollView.contentOffset));
}


@end
