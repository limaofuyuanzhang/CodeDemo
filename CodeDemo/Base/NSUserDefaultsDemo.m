//
//  NSUserDefaultsDemo.m
//  CodeDemo
//
//  Created by Lin Tao on 11/9/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "NSUserDefaultsDemo.h"

@implementation NSUserDefaultsDemo
+ (void)NSUserDefaultSaveDemo {
    //覆盖安装该值还在，卸载安装该值失效
    NSUserDefaults *store = [NSUserDefaults standardUserDefaults];
    NSUInteger selectedIndex = 1;
    [store setInteger:selectedIndex forKey:@"selectedIndex"];
    NSLog(@"保存成功");
}

+ (void) NSUserDefaultReadDemo {
    NSUserDefaults *store = [NSUserDefaults standardUserDefaults];
    if ([store valueForKey:@"selectedIndex"] != nil) {
        NSInteger index = [store integerForKey:@"selectedIndex"];
        NSLog(@"用户已经设置的selectedIndex的值是：%ld", index);
    } else {
        NSLog(@"请设置默认的值");
    }
}
@end
