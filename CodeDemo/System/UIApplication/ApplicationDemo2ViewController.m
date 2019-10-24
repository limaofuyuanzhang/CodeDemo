//
//  ApplicationDemo2ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/22.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ApplicationDemo2ViewController.h"

@interface ApplicationDemo2ViewController ()

@end

@implementation ApplicationDemo2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"打电话" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.layer.borderWidth = 1;
    button.layer.backgroundColor = [UIColor grayColor].CGColor;
    [button addTarget:self action:@selector(call) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).offset(0);
        make.right.mas_equalTo(self.view).offset(0);
        make.height.mas_equalTo(44);
        make.centerY.mas_equalTo(self.view).offset(0);
    }];
    
}

- (void)call {
    //打电话
    UIApplication *app = [UIApplication sharedApplication];
    [app openURL:[NSURL URLWithString:@"tel://10086"]];

//    //发短信
//    [app openURL:[NSURL URLWithString:@"sms://10086"]];
//
//    //发邮件
//    [app openURL:[NSURL URLWithString:@"mailto://12345@qq.com"]];
//
//    //打开一个网页资源
//    [app openURL:[NSURL URLWithString:@“http://www.520it.com"]];
//
//   // 打开其他app程序

}

@end
