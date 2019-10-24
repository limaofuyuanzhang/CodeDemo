//
//  CustomView.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "CustomView.h"


//自定义view
@interface CustomView()

@end

@implementation CustomView

//指定初始化方法
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self _initView];
    }
    return self;
}

- (instancetype)initWithModel:(CustomModel *)model
{
    if (self = [super init]) {
        self.model = model;
    }
    return self;
}

//可以在这里添加子view及添加约束
- (void)_initView {
    //添加view

}

- (void)updataWithInfo:(NSDictionary *)info {
     //下面添加修改视图逻辑
}


- (void)updataWithModel:(CustomModel *)model {
    self.model = model;
    //下面添加修改视图逻辑
}


- (void)layoutSubviews {
    // 注意点:这里一定要写
    [super layoutSubviews];
    //添加子控制的约束或frame
}


//添加点击事件
- (void)addTapView {
    UILabel *tapLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.frame.size.width, 100)];
    tapLabel.backgroundColor = [UIColor grayColor];
    tapLabel.text = @"点击";
    tapLabel.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTapAvatar:)];
    [tapLabel addGestureRecognizer:tapGestureRecognizer];
    
    [self addSubview:tapLabel];
}

- (void)onTapAvatar:(UIGestureRecognizer *)gestureRecognizer {
    NSLog(@"点击");
}

- (void)dealloc {
    NSLog(@"CustomView 释放");
}


@end
