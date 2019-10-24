
//
//  CodeDesignDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "CodeDesignDemo.h"
#import "LazyLoadViewController.h"
#import "SingletonDemoViewController.h"

@implementation CodeDesignDemo
+ (void)lazyLoadDemo0ShowInVC:(UIViewController *)vc {
    LazyLoadViewController *demoVC = [[LazyLoadViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)singletonDemo0ShowInVC:(UIViewController *)vc {
    SingletonDemoViewController *demoVC = [[SingletonDemoViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
