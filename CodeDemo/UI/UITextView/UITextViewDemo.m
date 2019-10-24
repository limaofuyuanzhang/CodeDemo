//
//  UITextViewDemo.m
//  CodeDemo
//
//  Created by Lin Tao on 23/9/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "UITextViewDemo.h"
#import "TextViewDemoView.h"
#import "LimitTextViewUseNotificationViewController.h"
#import "TextFieldDemo0ViewController.h"

@interface UITextViewDemo()

@end

@implementation UITextViewDemo

+ (void)textViewLinkDemo {
    TextViewDemoView *view = [[TextViewDemoView alloc] initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH, 200)];
    [UIWindow lm_showView:view];
}

+ (void)limitTextViewNotificationDemoInVC:(UIViewController *)vc {
    LimitTextViewUseNotificationViewController *limitVC = [[LimitTextViewUseNotificationViewController alloc] init];
    [vc.navigationController pushViewController:limitVC animated:YES];
}

+ (void)textFieldDemo0InVC:(UIViewController *)vc {
    TextFieldDemo0ViewController *demoVC = [[TextFieldDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

@end
