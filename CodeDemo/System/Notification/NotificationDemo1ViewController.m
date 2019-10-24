

//
//  NotificationDemo1ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/22.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "NotificationDemo1ViewController.h"

@interface NotificationDemo1ViewController ()

@end

@implementation NotificationDemo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIDevice *device = [UIDevice currentDevice];
    [device beginGeneratingDeviceOrientationNotifications];

    // 注册屏幕方向变化通知
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(deviceOrientationDidChange:)
                                                 name:@"UIDeviceOrientationDidChangeNotification"
                                               object:nil];
    


}

- (void)deviceOrientationDidChange:(NSNotification *)note {
    NSLog(@"%@",note);
    // 获取设备方向
    /*
        UIDeviceOrientationUnknown,
        UIDeviceOrientationPortrait,            // home button on the bottom    竖向，头向上
        UIDeviceOrientationPortraitUpsideDown,  // home button on the top       竖向，头向下
        UIDeviceOrientationLandscapeLeft,       // home button on the right     横向，头向左
        UIDeviceOrientationLandscapeRight,      // home button on the left      横向，头向右
        UIDeviceOrientationFaceUp,              // face up                      平放，屏幕朝上
        UIDeviceOrientationFaceDown             // face down                    平放，屏幕朝下

        除非正在生成设备方向的通知，否则返回 UIDeviceOrientationUnknown
    */
    UIDeviceOrientation orientation = [UIDevice currentDevice].orientation;
    NSLog(@"orientation:%@",@(orientation));
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
