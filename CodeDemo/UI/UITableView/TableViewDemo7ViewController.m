


//
//  TableViewDemo7ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/21.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "TableViewDemo7ViewController.h"

@interface TableViewDemo7ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation TableViewDemo7ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.dataArray = [NSMutableArray arrayWithArray:@[@"cell1",@"cell2",@"cell3"]];
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
         make.bottom.mas_equalTo(self.view).offset(-44*3);
     }];
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

#pragma mark - UITableViewDelegate
/**
  只要实现这个方法,就拥有左滑删除功能
  点击了默认的Delete按钮就会调用这个方法
 */
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 修改模型
    [self.dataArray removeObjectAtIndex:indexPath.row];
    
    // 刷新表格
    [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationMiddle];
}

// 修改默认的Delete的文字
- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return @"删除";
}

@end
