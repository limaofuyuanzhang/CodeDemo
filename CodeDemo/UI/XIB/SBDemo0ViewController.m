


//
//  SBDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/23.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "SBDemo0ViewController.h"

@interface SBDemo0ViewController ()

@end

@implementation SBDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //从storyBoard当中加载控制器.
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"SBDemo0" bundle:nil];
    //加载UIStoryboard当中哪一个控制器
    //加载UIStoryboard当中剪头指向的控制器
    UIViewController *vc = [sb instantiateInitialViewController];
    [self.navigationController pushViewController:vc animated:YES];
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
