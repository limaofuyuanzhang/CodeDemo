//


//  ViewControllerDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ViewControllerDemo.h"
#import "VCDemo0ViewController.h"
#import "VCDemo1ViewController.h"
#import "VCDemo2ViewController.h"

@implementation ViewControllerDemo
+ (void)vcDemo0ShowInVC:(UIViewController *)vc {
    VCDemo0ViewController *demoVC = [[VCDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)vcDemo1ShowInVC:(UIViewController *)vc {
    VCDemo1ViewController *demoVC = [[VCDemo1ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)vcDemo2ShowInVC:(UIViewController *)vc {
    VCDemo2ViewController *demoVC = [[VCDemo2ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
