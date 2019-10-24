

//
//  VCDemo2ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/23.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "VCDemo2ViewController.h"

@interface VCDemo2ViewController ()

@end

@implementation VCDemo2ViewController

//一但重写了loadView,就代表控制器的View有自己来创建
//写[super loadView]也不行.
- (void)loadView {
    
    //1.当前控制器是否从StoryBaord当中加载
    //self.view = storyBaord当中控制器的View;
    
    //2.有没有xib来描述控制器的View,如果有
    //self.view = xib当中的View
    
    //3.如果都不是
    //self.view = [[UIView alloc] init];
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    self.view = view;
    
    //[super loadView];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
