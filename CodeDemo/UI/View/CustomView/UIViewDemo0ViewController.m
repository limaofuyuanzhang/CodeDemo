


//
//  CustomViewDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "UIViewDemo0ViewController.h"
#import "CustomView.h"

@interface UIViewDemo0ViewController ()

@end

@implementation UIViewDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CustomView *view = [[CustomView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
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
