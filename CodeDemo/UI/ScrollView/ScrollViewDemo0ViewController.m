

//
//  ScrollViewDemo0ViewController.m
//  CodeDemo
//
//  Created by Lin Tao on 19/10/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ScrollViewDemo0ViewController.h"

@interface ScrollViewDemo0ViewController ()

@end

@implementation ScrollViewDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH/2, SCREEN_HEIGHT/2)];
    scrollView.contentSize = CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT);
    scrollView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:scrollView];
        // 3.是否能够滚动
    //    scrollView.scrollEnabled = NO;
        
        // 4.是否能跟用户交互(能不能响应用户的拖拽,点击 等操作)
        // 注意点:如果设置该属性为NO,scrollView以及它所有的子控件都不能跟用户交互
    //    scrollView.userInteractionEnabled = NO;
    
        // 3.是否有弹簧效果
    //    self.scrollView.bounces = YES;
    //
        // 4.不管有没有设置contentSize,总是有弹簧效果
    //    self.scrollView.alwaysBounceHorizontal = YES;
    //    self.scrollView.alwaysBounceVertical = YES;
        
        
        // 5.是否显示滚动条
    //    self.scrollView.showsHorizontalScrollIndicator = NO;
    //    self.scrollView.showsVerticalScrollIndicator = NO;
    
    UIView *redView = [[UIView alloc] init];
    redView.frame = CGRectMake(0, 0, 50, 50);
    redView.backgroundColor = [UIColor redColor];
    [scrollView addSubview:redView];
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
