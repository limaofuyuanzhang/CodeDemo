


//
//  BezierPathView.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/15.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "BezierPathView.h"

@implementation BezierPathView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    /*画一条线*/
    // 创建path
    UIBezierPath *path = [UIBezierPath bezierPath];
    // 添加路径[1条点(10,10)到点(50,10)的线段]到path
    [path moveToPoint:CGPointMake(10 , 10)];
    [path addLineToPoint:CGPointMake(50, 10)];
    // 将path绘制出来
    [path stroke];
    
    /*画一个圆*/
    //创建path
//    UIBezierPath *path1 = [UIBezierPath bezierPath];
//    // 添加圆到path
//    [path1 addArcWithCenter:CGPointMake(25, 10) radius:20.0 startAngle:0.0 endAngle:M_PI*2 clockwise:YES];
//    // 设置描边宽度（为了让描边看上去更清楚）
//    [path1 setLineWidth:5.0];
//    //设置颜色（颜色设置也可以放在最上面，只要在绘制前都可以）
//    [[UIColor blueColor] setStroke];
//    [[UIColor redColor] setFill];
//    // 描边和填充
//    [path1 stroke]; //描边
//    [path1 fill]; //填充
    
    /*画一个矩阵*/
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRect:CGRectMake(10, 15, 20, 10)];
    [path2 stroke];
    
}


@end
