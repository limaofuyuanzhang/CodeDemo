//
//  UIImageViewDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/9.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "UIImageViewDemo.h"
#import "UIImageViewBaseDemoViewController.h"
#import "ImageViewDemo1ViewController.h"

@implementation UIImageViewDemo
+ (void)imageViewDemoShowInVC:(UIViewController *)vc {
    UIImageViewBaseDemoViewController *demoVC = [[UIImageViewBaseDemoViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)imageViewDemo1ShowInVC:(UIViewController *)vc {
    ImageViewDemo1ViewController *demoVC = [[ImageViewDemo1ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
