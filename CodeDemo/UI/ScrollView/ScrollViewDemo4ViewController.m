


//
//  ScrollViewDemo4ViewController.m
//  CodeDemo
//
//  Created by Lin Tao on 20/10/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ScrollViewDemo4ViewController.h"

@interface ScrollViewDemo4ViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation ScrollViewDemo4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 1.创建scrollView
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = [UIColor redColor];
    scrollView.frame = CGRectMake(20, 20, 300, 130);
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
    
    // 3.开启分页功能
    // 分页的标准:以scrollView的尺寸为一页
    self.scrollView.pagingEnabled = YES;
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
