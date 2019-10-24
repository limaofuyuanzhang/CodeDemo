


//
//  ScrollViewDemo1ViewController.m
//  CodeDemo
//
//  Created by Lin Tao on 20/10/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ScrollViewDemo1ViewController.h"

@interface ScrollViewDemo1ViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation ScrollViewDemo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(50, 100, 280, 160)];
    UIImage *image = [UIImage imageNamed:@"minion"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [scrollView addSubview:imageView];
    scrollView.contentSize = image.size;
    scrollView.backgroundColor = [UIColor grayColor];
    self.scrollView = scrollView;
    [self.view addSubview:self.scrollView];
    
    // 3.内容的偏移量
    // 作用:控制scrollView内容滚动的位置
    self.scrollView.contentOffset = CGPointMake(0, 100);
    
    // 4.内边距,增加额外的滚动区域
    self.scrollView.contentInset = UIEdgeInsetsMake(100, 0, 0, 0);
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
