


//
//  ScrollViewDemo2ViewController.m
//  CodeDemo
//
//  Created by Lin Tao on 20/10/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ScrollViewDemo2ViewController.h"

@interface ScrollViewDemo2ViewController ()<UIScrollViewDelegate>

@end

@implementation ScrollViewDemo2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 1.创建scrollView
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = [UIColor redColor];
    scrollView.frame = CGRectMake(20, 20, 300, 200);
    [self.view addSubview:scrollView];
    
    // 通过代码创建的scrollView,一开始subviews为nil
    //    NSLog(@"%@",scrollView.subviews);
    
    // 2.UIImageView
    UIImage *image = [UIImage imageNamed:@"minion"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [scrollView addSubview:imageView];
    
    // 3.设置contentSize
    scrollView.contentSize = image.size;
    
    // 4.设置代理属性 代理对象
    scrollView.delegate = self;
}


#pragma mark - UIScrollViewDelegate 代理方法
// scrollView正在滚动的时候就会自动调用这个方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"scrollViewDidScroll");
}

// 用户即将开始拖拽scrollView时,会自动调用这个方法
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"scrollViewWillBeginDragging");
}

// 用户即将停止拖拽scrollView时,会自动调用这个方法
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    NSLog(@"scrollViewWillEndDragging");
}

// 用户已经停止拖拽scrollView时,会自动调用这个方法
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    if (decelerate == NO) {
        NSLog(@"用户已经停止拖拽scrollView,scrollView停止滚动");
    } else {
        NSLog(@"用户已经停止拖拽scrollView,但是scrollView由于惯性会继续滚动,并且减速");
    }
}

// scrollView减速完毕的时候会调用这个方法(停止滚动)
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"scrollView减速完毕,停止滚动");
}

@end
