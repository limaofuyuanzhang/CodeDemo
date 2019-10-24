


//
//  AVPlayerDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/10.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "AVPlayerDemo.h"
#import "AVPlayerDemo0ViewController.h"

@implementation AVPlayerDemo
+ (void)AVPlayerDemo0ShowInVC:(UIViewController *)vc {
    AVPlayerDemo0ViewController *demoVC = [[AVPlayerDemo0ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}
@end
