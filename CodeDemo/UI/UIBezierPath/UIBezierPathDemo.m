


//
//  UIBezierPathDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/15.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "UIBezierPathDemo.h"
#import "UIBezierPathDemo0ViewController.h"

@implementation UIBezierPathDemo

+ (void)bezierDemo0ShowInVC:(UIViewController *)vc {
    UIBezierPathDemo0ViewController *demoVC = [[UIBezierPathDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
