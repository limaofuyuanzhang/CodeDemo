
//
//  LabelDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/10.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "LabelDemo.h"
#import "LabelDemo0ViewController.h"
#import "LabelDemo1ViewController.h"

@implementation LabelDemo
+ (void)LabelDemo0ShowInVC:(UIViewController *)vc {
    LabelDemo0ViewController *demoVC = [[LabelDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)LabelDemo1ShowInVC:(UIViewController *)vc {
    LabelDemo1ViewController *demoVC = [[LabelDemo1ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
