


//
//  ScrollViewDemo3ViewController.m
//  CodeDemo
//
//  Created by Lin Tao on 20/10/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ScrollViewDemo3ViewController.h"

@interface ScrollViewDemo3ViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation ScrollViewDemo3ViewController

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
    self.imageView = imageView;
    
    // 3.设置contentSize
    scrollView.contentSize = image.size;
    
    // 4.设置代理属性 代理对象
    scrollView.delegate = self;
    // 5.设置缩放比例
    scrollView.maximumZoomScale = 2.0;
    scrollView.minimumZoomScale = 0.5;
    self.scrollView = scrollView;
    
    
}

#pragma mark - UIScrollViewDelegate
// 返回需要缩放的子控件(scrollView的子控件)
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

// scrollView正在缩放的时候就会调用这个方法
- (void)scrollViewDidZoom:(UIScrollView *)scrollView
{
    NSLog(@"scrollViewDidZoom");
}

@end
