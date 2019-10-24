//
//  AnimationDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "AnimationDemo0ViewController.h"

@interface AnimationDemo0ViewController ()
@property (nonatomic, strong) UIView *redView;
@end

@implementation AnimationDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.redView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 150, 100)];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self test];
    // 第二种方式 : block式
    //    [UIView animateWithDuration:2 animations:^{
    //        // 修改位置
    //        CGRect frame = self.redView.frame;
    //        frame.origin.y += 100;
    //        frame.size = CGSizeMake(5, 5);
    //        self.redView.frame = frame;
    //    }];
    
    //    [UIView animateWithDuration:2 animations:^{
    //        // 修改位置
    //        CGRect frame = self.redView.frame;
    //        frame.origin.y += 100;
    //        frame.size = CGSizeMake(5, 5);
    //        self.redView.frame = frame;
    //    } completion:^(BOOL finished) {
    //        NSLog(@"动画执行完毕后会调用这个block");
    //    }];
    
    // 2秒后执行动画,动画持续1秒钟
//    [UIView animateWithDuration:1 delay:2 options:kNilOptions animations:^{
//        // 修改位置
//        CGRect frame = self.redView.frame;
//        frame.origin.y += 100;
//        frame.size = CGSizeMake(5, 5);
//        self.redView.frame = frame;
//    } completion:^(BOOL finished) {
//        NSLog(@"动画执行完毕后会调用这个block");
//    }];
}

// 第一种方式 : 头尾式
- (void)test
{
    // 开始动画
    [UIView beginAnimations:nil context:nil];
    // 设置动画时间
    [UIView setAnimationDuration:1];
    
    // 慢慢消失
    //    self.redView.alpha = 0;
    //
    //    self.redView.hidden = YES;
    // 修改位置
    CGRect frame = self.redView.frame;
    frame.origin.y += 100;
    frame.size = CGSizeMake(5, 5);
    self.redView.frame = frame;
    
    // 提交动画
    [UIView commitAnimations];
}

@end
