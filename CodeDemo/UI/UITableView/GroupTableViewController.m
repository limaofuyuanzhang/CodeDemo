
//
//  GroupTableViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/26.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "GroupTableViewController.h"
#import <Masonry.h>

@interface GroupTableViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy) NSArray *dataArray;
@end

@implementation GroupTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.dataArray = @[
        @{
            @"title":@"group1",
            @"cells":@[@"cell1",@"cell2",@"cell3",@"cell4",@"cell5",@"cell6"]
        },
        @{
            @"title":@"group2",
            @"cells":@[@"cell1",@"cell2",@"cell3",@"cell4",@"cell5",@"cell6"]
        },
        @{
            @"title":@"group3",
            @"cells":@[@"cell1",@"cell2",@"cell3",@"cell4",@"cell5",@"cell6"]
        },
        @{
            @"title":@"group4",
            @"cells":@[@"cell1",@"cell2",@"cell3",@"cell4",@"cell5",@"cell6"]
        },
    ];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    UITableView *tableView = [[UITableView alloc] init];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.backgroundColor = [UIColor whiteColor];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"]; //有几种cell就在此处进行注册
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

# pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *cells = self.dataArray[section][@"cells"];
    return cells.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    NSArray *cells = self.dataArray[indexPath.section][@"cells"];
    cell.textLabel.text = cells[indexPath.row];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return self.dataArray[section][@"title"];
}

# pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    //点击事件
}

@end
