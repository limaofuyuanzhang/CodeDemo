



//
//  NotificationDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/22.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "NotificationDemo.h"
#import "NotificationDemo0ViewController.h"
#import "NotificationDemo1ViewController.h"
#import "NotificationDemo2ViewController.h"

@implementation NotificationDemo
+ (void)notificatioDemo0ShowInVC:(UIViewController *)vc {
    NotificationDemo0ViewController *demoVC = [[NotificationDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)notificatioDemo1ShowInVC:(UIViewController *)vc {
    NotificationDemo1ViewController *demoVC = [[NotificationDemo1ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)notificatioDemo2ShowInVC:(UIViewController *)vc {
    NotificationDemo2ViewController *demoVC = [[NotificationDemo2ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
