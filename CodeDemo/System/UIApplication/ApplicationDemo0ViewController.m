//
//  ApplicationDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/22.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ApplicationDemo0ViewController.h"

@interface ApplicationDemo0ViewController ()

@end

@implementation ApplicationDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge categories:nil];
    [[UIApplication sharedApplication] registerUserNotificationSettings:settings];
    [UIApplication sharedApplication].applicationIconBadgeNumber = 10;
    //设置指示器的联网动画
     [UIApplication sharedApplication].networkActivityIndicatorVisible=YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
