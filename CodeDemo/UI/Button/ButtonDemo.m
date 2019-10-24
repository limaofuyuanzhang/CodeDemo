


//
//  ButtonDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ButtonDemo.h"
#import "ButtonDemo0ViewController.h"
#import "ButtonDemo1ViewController.h"
#import "ButtonDemo2ViewController.h"

@implementation ButtonDemo
+ (void)buttonDemo0ShowInVC:(UIViewController *)vc {
    ButtonDemo0ViewController *demoVC = [[ButtonDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)buttonDemo1ShowInVC:(UIViewController *)vc {
    ButtonDemo1ViewController *demoVC = [[ButtonDemo1ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)buttonDemo2ShowInVC:(UIViewController *)vc {
    ButtonDemo2ViewController *demoVC = [[ButtonDemo2ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
