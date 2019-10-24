

//
//  PastboardDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/9.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "PasteboardDemo.h"
#import "PasteboardDemoViewController.h"

@implementation PasteboardDemo
+ (void)pasteboardDemoShowInVC:(UIViewController *)vc {
    PasteboardDemoViewController *demoVC = [[PasteboardDemoViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
