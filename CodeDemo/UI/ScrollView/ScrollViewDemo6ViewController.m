

//
//  ScrollViewDemo6ViewController.m
//  CodeDemo
//
//  Created by Lin Tao on 20/10/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ScrollViewDemo6ViewController.h"

@interface ScrollViewDemo6ViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIPageControl *pageControl;
// 定时器
@property (nonatomic ,weak) NSTimer *timer;
@end

@implementation ScrollViewDemo6ViewController

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
    
    
    // 7.开启定时器
    [self startTimer];
}

#pragma mark - 定时器相关的方法
// 开启定时器
- (void)startTimer
{
    // 开启一个自动执行任务的定时器
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(nextPage:) userInfo:@"123" repeats:YES];
    
    // NSDefaultRunLoopMode(默认) : 同一时间只能执行一个任务
    // NSRunLoopCommonModes(公用) : 可以分配一定的时间处理其他任务
    
    // 将定时器添加到runLoop中,以NSRunLoopCommonModes添加
    // 目的:不管主线程在做什么操作,都要分配一定的时间处理定时器
    [[NSRunLoop mainRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

// 停止定时器
- (void)stopTimer
{
    [self.timer invalidate];
}

// 滚动到下一页
- (void)nextPage:(NSTimer *)timer
{
//    NSLog(@"nextPage--%@",timer.userInfo);
    // 计算下一页的页码
    NSInteger page = self.pageControl.currentPage + 1;
    
    // 超过最后一页
    if (page == 5) {
        page = 0;
    }
    
    // 滚动到下一页
    [self.scrollView setContentOffset:CGPointMake(page * self.scrollView.frame.size.width, 0) animated:YES];
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

// 用户即将开始拖拽scrollView,停止定时器
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    // 停止定时器
    [self stopTimer];
 
}

// 用户已经停止拖拽scrollView,开启定时器
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [self startTimer];
}


@end
