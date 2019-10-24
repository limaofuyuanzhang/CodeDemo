


//
//  OCDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "OCDemo.h"
#import "KVCDemoViewController.h"
#import "KVODemoViewController.h"

@implementation OCDemo
+ (void)kvcDemo0ShowInVC:(UIViewController *)vc {
    KVCDemoViewController *demoVC = [[KVCDemoViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];

}

+ (void)kvoDemo0ShowInVC:(UIViewController *)vc {
    KVODemoViewController *demoVC = [[KVODemoViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];

}
@end
