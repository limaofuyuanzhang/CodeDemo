//
//  ViewController.m
//  CodeDemo
//
//  Created by Lin Tao on 9/9/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "LMDemoViewController.h"
#import "LMMenuProvider.h"
#import "LMDemoProvider.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy) NSArray *titleArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *menu = [LMMenuProvider readFirstMenu];
    self.titleArray = menu;
    self.title = @"demo";
    /*
     edgesForExtendedLayout 。这个属性默认值是UIRectEdgeAll 。当你的容器是UINavigationController 的时候，默认的布局就是从状态栏的顶部开始的，所以就被导航栏给遮挡住了,将edgesForExtendedLayout属性设置为UIRectEdgeNone，这样布局就是从导航栏下面开始了。
     */
    self.edgesForExtendedLayout = UIRectEdgeNone;
    UITableView *tableView = [[UITableView alloc] init];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.backgroundColor = [UIColor whiteColor];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    if (@available(iOS 11.0, *)) {
        tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    [self.view addSubview:tableView];
    self.tableView = tableView;
    
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).offset(0);
        make.right.mas_equalTo(self.view).offset(0);
        make.top.mas_equalTo(self.view).offset(0);
        make.bottom.mas_equalTo(self.view).offset(0);
    }];
}

# pragma mark - tableview
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.titleArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSDictionary *dic = self.titleArray[section];
    NSArray *data = dic[@"data1"];
    return data.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSDictionary *dic = self.titleArray[section];
    NSString *title = dic[@"title1"];
    return title;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    cell.textLabel.text = self.titleArray[indexPath.section][@"data1"][indexPath.row][@"title2"];
    return cell;
}

//indexPath中，section:一级目录，row:二级目录
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    LMDemoViewController *vc = [[LMDemoViewController alloc] init];
    vc.dataArray = [LMMenuProvider readThirdMenu:indexPath];
    vc.title = self.titleArray[indexPath.section][@"data1"][indexPath.row][@"title2"];
    vc.didSelectBlock = ^(NSIndexPath * _Nonnull innerIndexPath) {
        //indexPath中，section:三级目录,row:具体事例
        [LMDemoProvider runDemoWithOuterIndexPath:indexPath innerIndexPath:innerIndexPath];
    };
    [self.navigationController pushViewController:vc animated:YES];
}



@end
