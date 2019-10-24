




//
//  CustomViewDemo.m
//  CodeDemo
//
//  Created by Lin Tao on 23/10/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "CustomViewDemo.h"
#import "UIViewDemo0ViewController.h"

@implementation CustomViewDemo
+ (void)customViewDemo0InVC:(UIViewController *)vc {
    UIViewDemo0ViewController *demoVC = [[UIViewDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
