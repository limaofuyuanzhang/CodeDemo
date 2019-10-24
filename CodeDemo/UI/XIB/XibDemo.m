//
//  XibDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "XibDemo.h"
#import "XibDemo1ViewController.h"
#import "SBDemo0ViewController.h"

@implementation XibDemo
+ (void)readViewFromXIBDemo {
//    UINib *nib = [UINib nibWithNibName:@"View" bundle:nil];
//    NSArray *views = [nib instantiateWithOwner:nil options:nil];
//    [UIWindow lm_showView:views.firstObject];
}

+ (void)xibDemo1InVC:(UIViewController *)vc {
    XibDemo1ViewController *demoVC = [[XibDemo1ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)sbDemo0InVC:(UIViewController *)vc {
    SBDemo0ViewController *demoVC = [[SBDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
