//
//  ViewController.m
//  CodeDemo
//
//  Created by Lin Tao on 9/9/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "LMStringDemoViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy) NSArray *titleArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //考虑使用plist
    self.titleArray = @[
        @{@"title":@"基础类使用",
          @"data":@[@"字符串",@"NSUserDefaults"]
        },
        @{@"title":@"UI使用",
          @"data":@[@"UITextView"]
        },
    ];
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
    NSArray *data = dic[@"data"];
    return data.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSDictionary *dic = self.titleArray[section];
    NSString *title = dic[@"title"];
    return title;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    cell.textLabel.text = self.titleArray[indexPath.section][@"data"][indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            LMStringDemoViewController *vc = [[LMStringDemoViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            return;
        }
        
        if (indexPath.row == 1) {
            LMStringDemoViewController *vc = [[LMStringDemoViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            return;
        }
    }

}



@end
