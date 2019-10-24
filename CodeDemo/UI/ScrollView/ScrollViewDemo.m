

//
//  ScrollViewDemo.m
//  CodeDemo
//
//  Created by Lin Tao on 19/10/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ScrollViewDemo.h"
#import "ScrollViewDemo0ViewController.h"
#import "ScrollViewDemo1ViewController.h"
#import "ScrollViewDemo2ViewController.h"
#import "ScrollViewDemo3ViewController.h"
#import "ScrollViewDemo4ViewController.h"
#import "ScrollViewDemo5ViewController.h"
#import "ScrollViewDemo6ViewController.h"

@implementation ScrollViewDemo
+ (void)scrollViewDemo0InVC:(UIViewController *)vc {
    ScrollViewDemo0ViewController *demoVC = [[ScrollViewDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)scrollViewDemo1InVC:(UIViewController *)vc {
    ScrollViewDemo1ViewController *demoVC = [[ScrollViewDemo1ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)scrollViewDemo2InVC:(UIViewController *)vc {
    ScrollViewDemo2ViewController *demoVC = [[ScrollViewDemo2ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)scrollViewDemo3InVC:(UIViewController *)vc {
    ScrollViewDemo3ViewController *demoVC = [[ScrollViewDemo3ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)scrollViewDemo4InVC:(UIViewController *)vc {
    ScrollViewDemo4ViewController *demoVC = [[ScrollViewDemo4ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)scrollViewDemo5InVC:(UIViewController *)vc {
    ScrollViewDemo5ViewController *demoVC = [[ScrollViewDemo5ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)scrollViewDemo6InVC:(UIViewController *)vc {
    ScrollViewDemo6ViewController *demoVC = [[ScrollViewDemo6ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
