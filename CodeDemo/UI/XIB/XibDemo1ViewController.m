


//
//  XibDemo1ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/23.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "XibDemo1ViewController.h"
#import "LoginViewController.h"

@interface XibDemo1ViewController ()

@end

@implementation XibDemo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //通过Xib加载控制器的View
    //1.创建Xib文件
    //2.告诉Xib描述哪一个控制器的View,->绑定类
    //3.告诉控制器,Xib当中哪一个View去描述控制器的View.->连线
    
    
    
    
    /***
     initWithNibName:
     1.指定名称,会加载指定名称的xib.
     2.如果name指定的为nil.
     先去加载有没有相同名称的xib,如果有,就去加载.(LoginViewController.xib)
     如果没有相同名称,还会去找相同名称,去掉Controller(LoginView.xib)
     3.如果还没有,就不使用xib来描述控制器的view.去创建一个空白View.
     
     */
    //init方法默认会调用initWithNibName:
    LoginViewController *loginVC = [[LoginViewController alloc] init];
    [self.navigationController pushViewController:loginVC animated:YES];
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
