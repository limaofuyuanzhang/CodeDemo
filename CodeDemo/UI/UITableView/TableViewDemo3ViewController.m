




//
//  TableViewDemo3ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/21.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "TableViewDemo3ViewController.h"

@interface TableViewDemo3ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy) NSArray *dataArray;
@end

@implementation TableViewDemo3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.dataArray = @[@"cell1",@"cell2",@"cell3"];
    //在iOS 7中，苹果引入了一个新的属性，叫做[UIViewController setEdgesForExtendedLayout:]，它的默认值为UIRectEdgeAll。当你的容器是navigation controller时，默认的布局将从navigation bar的顶部开始。这就是为什么所有的UI元素都往上漂移了44pt。 使用UIRectEdgeNone，使用布局从navigation bar的底部开始
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
    
    // 1.设置每一行cell的高度,默认是44
    self.tableView.rowHeight = 70;
    // 2.设置每一组的头部的高度
    self.tableView.sectionHeaderHeight = 50;
    // 2.设置每一组的尾部的高度
    self.tableView.sectionFooterHeight = 50;
    // 3.设置分割线的颜色,设置成[UIColor clearColor]代表隐藏分割线
    self.tableView.separatorColor = [UIColor redColor];
    // 4.设置分割线的样式
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    // 5.设置表头控件
    self.tableView.tableHeaderView = [[UISwitch alloc] init];
    //5.设置表尾控件
    self.tableView.tableFooterView = [[UISwitch alloc] init];
}

# pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

# pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    //点击事件
}

@end
