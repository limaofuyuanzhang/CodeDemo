



//
//  ApplicationDemo1ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/22.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ApplicationDemo1ViewController.h"

@interface ApplicationDemo1ViewController ()

@end

@implementation ApplicationDemo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //通过sharedApplication获取该程序的UIApplication对象
    UIApplication *app=[UIApplication sharedApplication];
    

    //设置状态栏的样式
    //app.statusBarStyle=UIStatusBarStyleDefault;//默认（黑色）
    //设置为白色+动画效果
      [app setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    //设置状态栏是否隐藏
    app.statusBarHidden=YES;
      //设置状态栏是否隐藏+动画效果
    [app setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
}

#pragma mark-设置状态栏的样式
-(UIStatusBarStyle)preferredStatusBarStyle
{
    //设置为白色
    //return UIStatusBarStyleLightContent;
    //默认为黑色
     return UIStatusBarStyleDefault;
}
#pragma mark-设置状态栏是否隐藏（否）
-(BOOL)prefersStatusBarHidden
{
    return NO;
}

@end
