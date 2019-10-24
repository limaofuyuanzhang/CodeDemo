//
//  KVODemoViewController.m
//  CodeDemo
//
//  Created by Lin Tao on 19/10/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "KVODemoViewController.h"
#import "XMGPerson.h"

@interface KVODemoViewController ()

@end




@implementation KVODemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    XMGPerson *p = [[XMGPerson alloc] init];
    p.name = @"jack";
    
    // 1.添加KVO监听:给p对象添加一个监听器,监听p对象name属性值的改变
    [p addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:@"123"];
    
    p.name = @"rose";
    
    p.name = @"laowang";
}


/**
 *  当利用KVO 监听到某个对象属性值发生改变会自动调用这个方法
 *
 *  @param keyPath 哪一个属性被改了
 *  @param object  哪一个对象的属性被该了
 *  @param change  改成什么样了
 */
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    // NSKeyValueChangeOldKey == @"old"
    // NSKeyValueChangeNewKey == @"new"
    NSLog(@"%@-%@",change[NSKeyValueChangeOldKey],change[NSKeyValueChangeNewKey]);
}

@end
