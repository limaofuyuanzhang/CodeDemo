

//
//  ButtonDemo1ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ButtonDemo1ViewController.h"
#import "XMGButton.h"

@interface ButtonDemo1ViewController ()

@end

@implementation ButtonDemo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    XMGButton*btn = [XMGButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 100, 100, 130);
    btn.backgroundColor = [UIColor redColor];
    [btn setImage:[UIImage imageNamed:@"qianbao"] forState:UIControlStateNormal];
    [btn setTitle:@"钱包" forState:UIControlStateNormal];
    //    btn.imageView.frame = CGRectMake(0, 0, 200, 70);
    //    btn.titleLabel.frame = CGRectMake(0, 70, 200, 30);
    [self.view addSubview:btn];
    NSLog(@"%@",btn.subviews);
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
