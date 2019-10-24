


//
//  PasteboardDemoViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/9.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "PasteboardDemoViewController.h"

@interface PasteboardDemoViewController ()

@end

@implementation PasteboardDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *copyString = @"复制到系统粘贴板";
    //如果字符串为空，复制到系统粘贴板会引起崩溃，如果不确定字符串的值需要先进行判断
    if (copyString.length == 0) {
        return;
    }
    UIPasteboard *pastboard = [UIPasteboard generalPasteboard];
    pastboard.string = copyString;
}

@end
