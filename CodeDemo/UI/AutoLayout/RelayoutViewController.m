//
//  RelayoutViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/27.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "RelayoutViewController.h"

@interface RelayoutViewController ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation RelayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor yellowColor];
    label.text = @"label";
    [self.view addSubview:label];
    self.label = label;
    
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:@"点击修改label高度" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(44);
        make.width.mas_equalTo(200);
        make.top.mas_equalTo(self.view).offset(0);
        make.left.mas_equalTo(self.view).offset(0);
    }];
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(100);
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.top.mas_equalTo(self.view).offset(100);
        make.left.mas_equalTo(self.view).offset(0);
    }];
}

- (void)tap {
    //重置约束，会把之前的约束都删除
//    [self.label mas_remakeConstraints:^(MASConstraintMaker *make) {
//        make.height.mas_equalTo(150);
//    }];
    //只修复内部的约束
    [self.label mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(150);
    }];
}
    

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
