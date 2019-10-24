
//
//  UIViewDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "UIViewDemo.h"
#import "CustomView.h"
#import "CornerViewController.h"
#import "UIViewDemo0ViewController.h"

@implementation UIViewDemo

+ (void)showCustomViewDemoShowInVC:(UIViewController *)vc {
    UIViewDemo0ViewController *demoVC = [[UIViewDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}


//倒计时
+ (void)countDownDemo {
    __block NSUInteger timeout = 5;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
    dispatch_source_set_timer(timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(timer, ^{
        
        if (timeout > 0) {
            dispatch_async(dispatch_get_main_queue(), ^{
                //此处修改UI
                NSLog(@"倒计时%@",@(timeout));
                timeout--;
            });
        } else {
            //此处关闭逻辑
            dispatch_async(dispatch_get_main_queue(), ^{
                NSLog(@"关闭");
            });
            dispatch_source_cancel(timer);
        }
    });
    dispatch_resume(timer);
}

+ (void)showTapView {
    CustomView *view = [[CustomView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [view addTapView];
    [UIWindow lm_showView:view];
}

+ (void)setCorner {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 100)];
    view.backgroundColor = [UIColor grayColor];
    view.layer.masksToBounds = YES;
    view.layer.cornerRadius = 10;
    [UIWindow lm_showView:view];
}

//验证subviews属性包含是否包含子view的子view
+ (void)subViewsTestDemo {
    UIView *superView = [[UIView alloc] init];
    UIView *subView1 = [[UIView alloc] init];
    subView1.tag = 1;
    [superView addSubview:subView1];
    UIView *subSubView1 = [[UIView alloc] init];
    subSubView1.tag = 11;
    [subView1 addSubview:subSubView1];
    UIView *subView2 = [[UIView alloc] init];
    subView2.tag = 2;
    [superView addSubview:subView2];
    NSLog(@"subView:\n%@",superView.subviews);
}

//判断一个view是否在别一个view中(含子view的子view)
+ (void)isSubviewDemo {
    UIView *superView = [[UIView alloc] init];
    UIView *subView1 = [[UIView alloc] init];
    subView1.tag = 1;
    [superView addSubview:subView1];
    UIView *subSubView1 = [[UIView alloc] init];
    subSubView1.tag = 11;
    [subView1 addSubview:subSubView1];
    UIView *subView2 = [[UIView alloc] init];
    subView2.tag = 2;
    [superView addSubview:subView2];
    NSLog(@"subSubView1->superView:%@",@([subSubView1 isDescendantOfView:superView]));
    NSLog(@"subSubView1->subView1:%@",@([subSubView1 isDescendantOfView:subView1]));
    NSLog(@"subSubView1->subView2:%@",@([subSubView1 isDescendantOfView:subView2]));
}

+ (void)cornerViewDemoShowInVC:(UIViewController *)vc {
    CornerViewController *demoVC = [[CornerViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}


@end
