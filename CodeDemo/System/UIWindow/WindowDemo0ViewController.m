




//
//  WindowDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/22.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "WindowDemo0ViewController.h"

@interface WindowDemo0ViewController ()

@end

@implementation WindowDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *windows = [UIApplication sharedApplication].windows;
    NSLog(@"%@",windows);
    //用来接收键盘以及非触摸类的消息事件的UIWindow，而且程序中每个时刻只能有一个UIWindow是keyWindow。如果某个UIWindow内部的文本框不能输入文字，可能是因为这个UIWindow不是keyWindow
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    NSLog(@"%@",keyWindow);
    

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
