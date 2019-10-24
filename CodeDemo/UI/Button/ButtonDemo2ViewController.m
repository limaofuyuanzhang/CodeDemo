


//
//  ButtonDemo2ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ButtonDemo2ViewController.h"

@interface ButtonDemo2ViewController ()

@end

@implementation ButtonDemo2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 1.创建图片
    UIImage *image = [UIImage imageNamed:@"chat"];
    
    // 2.找到中间可以拉伸的区域
    CGFloat imageW = image.size.width;
    CGFloat imageH = image.size.height;
    
    // 3.创建可以拉伸的图片
    //UIImageResizingModeStretch：拉伸模式，通过拉伸UIEdgeInsets指定的矩形区域来填充图片
    //UIImageResizingModeTile：平铺模式，通过重复显示UIEdgeInsets指定的矩形区域来填充图片
    UIImage *resizingImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(imageH * 0.5, imageW * 0.5, imageH * 0.5 - 1, imageW * 0.5 - 1) resizingMode:UIImageResizingModeStretch];
    
    // 4.设置背景图片
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 100, 200, 44);
    [btn setBackgroundImage:resizingImage forState:UIControlStateNormal];
    [self.view addSubview:btn];
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
