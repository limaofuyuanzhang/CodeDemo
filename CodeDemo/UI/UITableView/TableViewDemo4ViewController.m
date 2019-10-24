




//
//  TableViewDemo4ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/21.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "TableViewDemo4ViewController.h"
#import "XMGTestCell.h"

@interface TableViewDemo4ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation TableViewDemo4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
    
    // 根据ID这个标识注册对应的cell类型为UITableViewCell
    [self.tableView registerClass:XMGTestCell.class forCellReuseIdentifier:NSStringFromClass(XMGTestCell.class)];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 200;
}

// NSString *ID = @"wine";
// 每当一个cell进入视野范围内就会调用1次这个方法
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 1.首先去缓存池中找可循环利用的cell
    // dequeueReusableCellWithIdentifier这个方法内部首先会根据ID这个标识去缓存池取可循环利用的cell;如果缓存池中没有可循环利用的cell,会判断有没有根据ID这个标识注册对应的cell类型,如果有注册,会自动创建这种类型的cell,并且绑定ID这个标识返回
    // 特点:不能设置cell的类型
    // 场景:自定义cell
    XMGTestCell*cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(XMGTestCell.class)];
    // 3.设置cell显示的数据
    cell.textLabel.text = [NSString stringWithFormat:@"第%zd行数据",indexPath.row];
    cell.detailTextLabel.text = @"123";
    
    // 4.返回cell
    return cell;
}


@end
