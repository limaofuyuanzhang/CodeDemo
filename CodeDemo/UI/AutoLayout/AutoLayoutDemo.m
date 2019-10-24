//
//  AutoLayoutDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/27.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "AutoLayoutDemo.h"
#import "RelayoutViewController.h"
#import "RelayoutViewController1.h"

@implementation AutoLayoutDemo

+ (void)relayoutViewShowInVC:(UIViewController *)vc {
    RelayoutViewController *relayoutVC = [[RelayoutViewController alloc] init];
    [vc.navigationController pushViewController:relayoutVC animated:YES];
}

+ (void)relayoutView1ShowInVC:(UIViewController *)vc {
    RelayoutViewController1 *relayoutVC = [[RelayoutViewController1 alloc] init];
    [vc.navigationController pushViewController:relayoutVC animated:YES];
}

@end
