



//
//  AnimationDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "AnimationDemo.h"
#import "AnimationDemo0ViewController.h"

@implementation AnimationDemo
+ (void)animationDemo0ShowInVC:(UIViewController *)vc {
    AnimationDemo0ViewController *demoVC = [[AnimationDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
