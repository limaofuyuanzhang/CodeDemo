


//
//  PickViewDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/23.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "PickViewDemo.h"
#import "PickViewDemo0ViewController.h"

@implementation PickViewDemo
+ (void)pickViewDemo0InVC:(UIViewController *)vc {
    PickViewDemo0ViewController *demoVC = [[PickViewDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
