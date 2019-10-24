


//
//  TabelViewDemo10ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/21.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "TableViewDemo10ViewController.h"

@interface TableViewDemo10ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) UIButton *removeBtn;
@end

@implementation TableViewDemo10ViewController

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
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"点击进入编辑模式" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.layer.borderWidth = 1;
    button.layer.backgroundColor = [UIColor grayColor].CGColor;
    [button addTarget:self action:@selector(edit) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).offset(0);
        make.right.mas_equalTo(self.view).offset(0);
        make.height.mas_equalTo(44);
        make.bottom.mas_equalTo(self.view).offset(-44*2);
    }];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1 setTitle:@"点击删除数据" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button1.layer.borderWidth = 1;
    button1.layer.backgroundColor = [UIColor grayColor].CGColor;
    [button1 addTarget:self action:@selector(delete) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    [button1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).offset(0);
        make.right.mas_equalTo(self.view).offset(0);
        make.height.mas_equalTo(44);
        make.bottom.mas_equalTo(self.view).offset(-44*1);
    }];
    self.removeBtn = button1;
    
    // 在编辑模式下可以多选
    self.tableView.allowsMultipleSelectionDuringEditing = YES;
    // 隐藏删除按钮
    self.removeBtn.hidden = YES;
}

- (void)edit {
    [self.tableView setEditing:!self.tableView.isEditing animated:YES];
    // 控制删除按钮的显示
    self.removeBtn.hidden = !self.tableView.isEditing;
}


- (void)delete {
    // 千万不要一边遍历数组一边删除,因为每删除一个元素,其他元素在数组的中的索引可能会发生变化
    // 获取要删除的模型
    NSMutableArray *deletedCells = [NSMutableArray array];
    for (NSIndexPath *indexPath in self.tableView.indexPathsForSelectedRows) {
        [deletedCells addObject:self.dataArray[indexPath.row]];
    }
    
    // 删除模型
    [self.dataArray removeObjectsInArray:deletedCells];
    
    // 刷新表格
    [self.tableView deleteRowsAtIndexPaths:self.tableView.indexPathsForSelectedRows withRowAnimation:UITableViewRowAnimationAutomatic];
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
