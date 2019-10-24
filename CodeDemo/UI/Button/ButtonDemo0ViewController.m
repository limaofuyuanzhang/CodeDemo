


//
//  ButtonDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ButtonDemo0ViewController.h"

@interface ButtonDemo0ViewController ()

@end

@implementation ButtonDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        // 添加按钮
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(100, 100, 200, 50);
        [self.view addSubview:btn];
        
        // 设置显示的文字
    //    btn.titleLabel.text = @"我是按钮"; -> 错误的写法
        [btn setTitle:@"我是按钮" forState:UIControlStateNormal];
        [btn setTitle:@"我是高亮按钮" forState:UIControlStateHighlighted];
        
        // 设置显示图片
    //    btn.imageView.image = [UIImage imageNamed:@"like"]; -> 错误的写法
        [btn setImage:[UIImage imageNamed:@"like"] forState:UIControlStateNormal];
        
        // 设置显示的背景图片
        [btn setBackgroundImage:[UIImage imageNamed:@"buttongreen"] forState:UIControlStateNormal];
        // 不可以点击
    //    btn.enabled = NO;
        
        // 监听按钮的点击事件
        // 只要按钮触发了UIControlEventTouchUpInside事件,就会调用控制器的buttonClick:
        [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClick:(UIButton *)btn {
    NSLog(@"buttonClick:-%@",btn);
}

@end
