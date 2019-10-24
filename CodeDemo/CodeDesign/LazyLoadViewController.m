//
//  LazyLoadViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "LazyLoadViewController.h"

@interface LazyLoadViewController ()
@property (nonatomic ,strong) NSArray *shops;
@end

@implementation LazyLoadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// 懒加载:第一次用到时才加载,只加载1次
- (NSArray *)shops
{
    if (_shops == nil) { // 第二次不会进入这个大扩号
        // self.shops
        _shops = @[
                       @{
                           @"icon" : @"danjianbao",
                           @"name" : @"单肩包"
                           },
                       @{
                           @"icon" : @"liantiaobao",
                           @"name" : @"链条包"
                           },
                       @{
                           @"icon" : @"qianbao",
                           @"name" : @"钱包"
                           },
                       @{
                           @"icon" : @"shoutibao",
                           @"name" : @"手提包"
                           },
                       @{
                           @"icon" : @"shuangjianbao",
                           @"name" : @"双肩包"
                           },
                       @{
                           @"icon" : @"xiekuabao",
                           @"name" : @"斜挎包"
                           }
                       ];
        
    }
    
    return _shops;
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
