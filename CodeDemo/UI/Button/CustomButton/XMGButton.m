//
//  XMGButton.m
//  06-UIButton的内部细节
//
//  Created by ios1 on 16/12/12.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import "XMGButton.h"

@implementation XMGButton


- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.imageView.backgroundColor = [UIColor blueColor];
        self.titleLabel.backgroundColor = [UIColor orangeColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

// 返回图片显示的位置和尺寸
// contentRect == bounds
//- (CGRect)imageRectForContentRect:(CGRect)contentRect
//{
//    return CGRectMake(0, 0, contentRect.size.width, contentRect.size.width);
//}
//
//// 返回文字显示的位置和尺寸
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    return CGRectMake(0, contentRect.size.width, contentRect.size.width, contentRect.size.height - contentRect.size.width);
}

// 布局子控件,设置子控件的位置和尺寸
- (void)layoutSubviews
{
    [super layoutSubviews];

    CGFloat btnW = self.frame.size.width;
    CGFloat btnH = self.frame.size.height;

    self.imageView.frame = CGRectMake(0, 0, btnW, btnW);
    self.titleLabel.frame = CGRectMake(0, btnW, btnW, btnH - btnW);
}





@end
