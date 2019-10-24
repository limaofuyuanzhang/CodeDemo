



//
//  UIWindowDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/22.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "UIWindowDemo.h"
#import "WindowDemo0ViewController.h"

@implementation UIWindowDemo
+ (void)windowDemo0ShowInVC:(UIViewController *)vc {
    WindowDemo0ViewController *demoVC = [[WindowDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
