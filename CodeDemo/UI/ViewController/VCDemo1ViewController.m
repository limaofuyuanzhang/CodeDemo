

//
//  VCDemo1ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "VCDemo1ViewController.h"

@interface VCDemo1ViewController ()

@end

@implementation VCDemo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//手指按下事件
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"手指按下事件");
}

//手指移动事件
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"手指移动事件");
}

//手指抬起事件
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"手指抬起事件");
}

//意外中断事件（如电话打扰）,在触摸时中断才会发生
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"意外中断事件（如电话打扰）");
}

//3D触摸事件
- (void)touchesEstimatedPropertiesUpdated:(NSSet * _Nonnull)touches {
    NSLog(@"3D触摸事件");
}

@end
