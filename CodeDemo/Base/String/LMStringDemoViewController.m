//
//  LMStringDemoViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/24.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "LMStringDemoViewController.h"
#import "NSStringDemo.h"
#import <Masonry.h>

@interface LMStringDemoViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy) NSArray *titleArray;
@end

@implementation LMStringDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleArray = @[@"计算单行字符串宽高",@"计算多行字符串宽高",@"NSMutableAttributedString的基本使用",@"NSAttributedString设置行间距、段间距"];
    self.title = @"StringDemo";
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
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    cell.textLabel.text = self.titleArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:{
            [NSStringDemo calcOneLineSize];
        }
            break;
            
        case 1:{
            [NSStringDemo calcMutiLineSize];
        }
            break;
            
        case 2:{
            [NSStringDemo attributedStringDemo];
        }
            break;
            
        case 3:{
            [NSStringDemo attributedStringDemo1];
        }
            break;
            
        default:
            break;
    }
}


@end
