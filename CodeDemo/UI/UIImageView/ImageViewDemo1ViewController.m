


//
//  ImageViewDemo1ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/10.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ImageViewDemo1ViewController.h"

@interface ImageViewDemo1ViewController ()
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation ImageViewDemo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.imageView = [[UIImageView alloc] init];
    [self.view addSubview:self.imageView];
    // 设置显示的图片
    self.imageView.image = [UIImage imageNamed:@"dazhao_1"];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left);
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.centerY.mas_equalTo(self.view.mas_centerY);
        make.height.mas_equalTo(200);
    }];
    
    // 创建图片
    NSMutableArray *images = [NSMutableArray array];
    for (int i = 1; i <= 87; i++) {
        // 获取图片名字
        NSString *imageName = [NSString stringWithFormat:@"dazhao_%d",i];
        UIImage *image = [UIImage imageNamed:imageName];
        [images addObject:image];
    }
    
    // 设置动画的图片
    self.imageView.animationImages = images;
    
    // 设置动画的次数,0表示反复播
    self.imageView.animationRepeatCount = 0;
    
    // 设置动画的时间
    self.imageView.animationDuration = 87 * 0.05;
    
    // 开启动画
    [self.imageView startAnimating];
}

@end
