//
//  MeViewController.m
//  WMPageController_Demo
//
//  Created by admin on 16/5/30.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "MeViewController.h"

@interface MeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *tableView;

@end

@implementation MeViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"我的";
    
    self.automaticallyAdjustsScrollViewInsets   = NO;
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kWindowW, kWindowH) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    // 去掉分割线
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    // 越界不能上下拉
    _tableView.bounces = NO;
    
    
}

+ (UINavigationController *)defaultMeNavigationController {
    
    static UINavigationController *navi = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        MeViewController *meVC = [[MeViewController alloc] init];
        navi = [[UINavigationController alloc] initWithRootViewController:meVC];
    });
    return navi;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"h_1_cell"];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"h_1_cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"我的___%ld",indexPath.row];
    return cell;
    
}


@end
