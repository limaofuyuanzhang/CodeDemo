//
//  UIFontDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "UIFontDemo.h"

@implementation UIFontDemo

+ (void)differentFont {
    float height = 50;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0*height, SCREEN_WIDTH, height)];
    label1.text = @"系统默认字体";
    label1.font = [UIFont systemFontOfSize:14];
    [view addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 1*height, SCREEN_WIDTH, height)];
    label2.text = @"这是粗体";
    label2.font = [UIFont boldSystemFontOfSize:14];
    [view addSubview:label2];
    
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 2*height, SCREEN_WIDTH, height)];
    label3.text = @"这是斜体字";
    label3.font = [UIFont italicSystemFontOfSize:14];
    [view addSubview:label3];
    
    [UIWindow lm_showView:view];
}

@end
