

//
//  ScrollViewDemo5ViewController.m
//  CodeDemo
//
//  Created by Lin Tao on 20/10/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ScrollViewDemo5ViewController.h"

@interface ScrollViewDemo5ViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIPageControl *pageControl;
@end

@implementation ScrollViewDemo5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 1.创建scrollView
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = [UIColor redColor];
    scrollView.frame = CGRectMake(37, 84, 300, 130);
    [self.view addSubview:scrollView];
    self.scrollView = scrollView;
    
    // 1.添加图片
    CGFloat scrollViewW = self.scrollView.frame.size.width;
    CGFloat scrollViewH = self.scrollView.frame.size.height;
    
    int count = 5;
    for (int i = 0; i < count; i++ ) {
        UIImageView *imageView = [[UIImageView alloc] init];
        // 获取图片名
        NSString *imageName = [NSString stringWithFormat:@"img_0%d",i + 1];
        // 设置显示的图片
        imageView.image = [UIImage imageNamed:imageName];
        imageView.frame = CGRectMake(i * scrollViewW, 0, scrollViewW, scrollViewH);
        [self.scrollView addSubview:imageView];
    }
    
    // 2.设置contentSize
    // 这里的'0'表示在垂直方向不能够滚动
    self.scrollView.contentSize = CGSizeMake(count * scrollViewW, 0);
    self.scrollView.delegate = self;
    
    // 3.开启分页功能
    // 分页的标准:以scrollView的尺寸为一页
    self.scrollView.pagingEnabled = YES;
    
    // 4.设置总页数
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(170, 175, 150, 37)];
    [self.view addSubview:self.pageControl];
    self.pageControl.numberOfPages = count;
    
    // 5.单页的时候是否隐藏pageControl
    self.pageControl.hidesForSinglePage = YES;
    
    // 6.设置pageControl显示的图片(KVC)
    [self.pageControl setValue:[UIImage imageNamed:@"current"] forKeyPath:@"_currentPageImage"];
    [self.pageControl setValue:[UIImage imageNamed:@"other"] forKeyPath:@"_pageImage"];
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    // 四舍五入  int(小数 + 0.5)
    // 0.6 -> 1  int(0.6 + 0.5) -> 1
    // 1.3 -> 1  int(1.3 + 0.5) -> 1
    // 1.6 -> 2  int(1.6 + 0.5) -> 2
    // 计算页码
    int page = (int)(self.scrollView.contentOffset.x / self.scrollView.frame.size.width + 0.5);
    // 设置页码
    self.pageControl.currentPage = page;
}

@end
