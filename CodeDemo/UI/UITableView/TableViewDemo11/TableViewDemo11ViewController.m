



//
//  TableViewDemo11ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/21.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "TableViewDemo11ViewController.h"
#import "XMGWine.h"
#import "MJExtension.h"
#import "XMGWineCell.h"

@interface TableViewDemo11ViewController ()<UITableViewDataSource,UITableViewDelegate>

/** 所有的酒模型 */
@property (nonatomic ,strong) NSMutableArray *wineArray;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIButton *removeBtn;

@end

@implementation TableViewDemo11ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //在iOS 7中，苹果引入了一个新的属性，叫做[UIViewController setEdgesForExtendedLayout:]，它的默认值为UIRectEdgeAll。当你的容器是navigation controller时，默认的布局将从navigation bar的顶部开始。这就是为什么所有的UI元素都往上漂移了44pt。 使用UIRectEdgeNone，使用布局从navigation bar的底部开始
    self.edgesForExtendedLayout = UIRectEdgeNone;
    UITableView *tableView = [[UITableView alloc] init];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.backgroundColor = [UIColor whiteColor];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"XMGWineCell"]; //有几种cell就在此处进行注册
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
    [button setTitle:@"点击删除" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.layer.borderWidth = 1;
    button.layer.backgroundColor = [UIColor grayColor].CGColor;
    [button addTarget:self action:@selector(remove) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).offset(0);
        make.right.mas_equalTo(self.view).offset(0);
        make.height.mas_equalTo(44);
        make.bottom.mas_equalTo(self.view).offset(-44*2);
    }];
    self.removeBtn = button;
}

- (NSMutableArray *)wineArray
{
    if (!_wineArray) {
        _wineArray = [XMGWine mj_objectArrayWithFilename:@"wine.plist"];
    }
    return _wineArray;
}

- (void)remove {
    // 获取要删除的酒模型
    NSMutableArray *deletedWine = [NSMutableArray array];
    for (XMGWine *wine in self.wineArray) {
        if (wine.isCheck) {
            [deletedWine addObject:wine];
        }
    }
    
    // 删除模型
    [self.wineArray removeObjectsInArray:deletedWine];
    
    // 刷新表格
    [self.tableView reloadData];
}

#pragma  mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return self.wineArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 访问缓存池
    static NSString *ID = @"wine";
    XMGWineCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    // 缓存池没有,自己创建
    if (cell == nil) {
        cell = [[XMGWineCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    // 传递数据
    cell.wine = self.wineArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    XMGWine *wine = self.wineArray[indexPath.row];
    wine.check = !wine.isCheck;
    
    [self.tableView reloadData];
}
@end
