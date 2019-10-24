



//
//  UIBezierPathDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/15.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "UIBezierPathDemo0ViewController.h"
#import "BezierPathView.h"

@interface UIBezierPathDemo0ViewController ()

@end

@implementation UIBezierPathDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    BezierPathView *view = [[BezierPathView alloc] init];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(self.view.mas_height);
        make.centerY.mas_equalTo(self.view.mas_centerY);
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.centerX.mas_equalTo(self.view.mas_centerX);
    }];

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
