


//
//  ApplicationDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/22.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ApplicationDemo.h"
#import "ApplicationDemo0ViewController.h"
#import "ApplicationDemo1ViewController.h"
#import "ApplicationDemo2ViewController.h"

@implementation ApplicationDemo
+ (void)applicationDemo0ShowInVC:(UIViewController *)vc {
    ApplicationDemo0ViewController *demoVC = [[ApplicationDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)applicationDemo1ShowInVC:(UIViewController *)vc {
    ApplicationDemo1ViewController *demoVC = [[ApplicationDemo1ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)applicationDemo2ShowInVC:(UIViewController *)vc {
    ApplicationDemo2ViewController *demoVC = [[ApplicationDemo2ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
