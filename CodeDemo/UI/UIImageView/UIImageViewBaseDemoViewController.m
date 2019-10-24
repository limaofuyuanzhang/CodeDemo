//
//  UIImageViewBaseDemoViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/9.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "UIImageViewBaseDemoViewController.h"

@interface UIImageViewBaseDemoViewController ()

@end

@implementation UIImageViewBaseDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUInteger imageHeight = 100;
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"imageviewdemo1"]];
    //默认属性,按照"UIImageView"的宽高比缩放图片至图片填充整个UIImageView
    imageView1.contentMode = UIViewContentModeScaleToFill;
    [self.view addSubview:imageView1];
    
    [imageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.height.mas_equalTo(imageHeight);
        make.top.mas_equalTo(self.view).offset(0);
        make.left.mas_equalTo(self.view).offset(0);
    }];
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"imageviewdemo1"]];
    // 按照"图片的宽高"比例缩放图片至图片的宽度或者高度和UIImageView一样,并且让整个图片都在UIImageView中,然后居中显示
    imageView2.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView2];
    
    [imageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.height.mas_equalTo(imageHeight);
        make.top.mas_equalTo(imageView1.mas_bottom).offset(10);
        make.left.mas_equalTo(self.view).offset(0);
    }];
    
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"imageviewdemo1"]];
    // 按照"图片的宽高"比例缩放图片至图片的宽度和高度填充整个UIImageView,然后居中显示
    imageView3.contentMode = UIViewContentModeScaleAspectFill;
    imageView3.clipsToBounds = YES; //为YES时，如果子视图的范围超出了父视图的边界，那么超出的部分就会被裁剪掉。
    [self.view addSubview:imageView3];
    
    [imageView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.height.mas_equalTo(imageHeight);
        make.top.mas_equalTo(imageView2.mas_bottom).offset(10);
        make.left.mas_equalTo(self.view).offset(0);
    }];
    
    UIImageView *imageView4 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"imageviewdemo1"]];
  
    imageView4.contentMode = UIViewContentModeCenter;
    imageView4.clipsToBounds = YES; //为YES时，如果子视图的范围超出了父视图的边界，那么超出的部分就会被裁剪掉。
    [self.view addSubview:imageView4];
    
    [imageView4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.height.mas_equalTo(imageHeight);
        make.top.mas_equalTo(imageView3.mas_bottom).offset(10);
        make.left.mas_equalTo(self.view).offset(0);
    }];
    
    UIImageView *imageView5 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"imageviewdemo1"]];

    imageView5.contentMode = UIViewContentModeLeft;
    imageView5.clipsToBounds = YES; //为YES时，如果子视图的范围超出了父视图的边界，那么超出的部分就会被裁剪掉。
    [self.view addSubview:imageView5];
    
    [imageView5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.height.mas_equalTo(imageHeight);
        make.top.mas_equalTo(imageView4.mas_bottom).offset(10);
        make.left.mas_equalTo(self.view).offset(0);
    }];
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
