//
//  TabBarViewController.m
//  WMPageController_Demo
//
//  Created by admin on 16/5/30.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "TabBarViewController.h"
#import "HomeViewController.h"
#import "MeViewController.h"



@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationController *homeNav = [HomeViewController defaultFindUINavigationController];
    [self setupChildController:homeNav imageName:@"" selectedImage:@""];
    
    
    
    
    UINavigationController *meNav = [MeViewController defaultMeNavigationController];
    [self setupChildController:meNav imageName:@"" selectedImage:@""];
    
    
}/**  绑定各个控制器, 顺便设置属性 */
- (void)setupChildController:(UIViewController *)vc imageName:(NSString *)imgName selectedImage:(NSString *)selectedImgName {
    // 设置图片间距
    vc.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0);
    vc.tabBarItem.image = [UIImage imageNamed:imgName];
    // 设置图片的不渲染
    UIImage *image = [[UIImage imageNamed:selectedImgName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = image;
    [self addChildViewController:vc];
    
}

@end
