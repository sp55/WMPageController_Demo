//
//  HomeViewController.h
//  WMPageController_Demo
//
//  Created by admin on 16/5/30.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <WMPageController/WMPageController.h>
#import "WMPageController.h"
#import "NavigationViewController.h"

/**
 *  继承 WMPageController
 */

@interface HomeViewController : WMPageController


/** 单例一个带有WMPageController的Navi*/
+ (UINavigationController *)defaultFindUINavigationController;

@end
