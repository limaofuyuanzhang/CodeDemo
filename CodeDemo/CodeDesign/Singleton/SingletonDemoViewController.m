

//
//  SingletonDemoViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "SingletonDemoViewController.h"
#import "Singleton.h"

@interface SingletonDemoViewController ()

@end

@implementation SingletonDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Singleton *sigleton1 = [Singleton sharedSingleton];
    Singleton *sigleton2 = [Singleton sharedSingleton];
    NSLog(@"地址一样");
    NSLog(@"sigleton1:%@",sigleton1);
    NSLog(@"sigleton2:%@",sigleton2);
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
