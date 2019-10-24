//
//  AVPlayerDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/10.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "AVPlayerDemo0ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface AVPlayerDemo0ViewController ()
@property (nonatomic, strong) AVPlayer *player;
@end

@implementation AVPlayerDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 获取软件安装包对象
    NSBundle *bundle = [NSBundle mainBundle];
    // 获取安装包中某一个资源的路径
    NSURL *url =[bundle URLForResource:@"dazhao.mp3" withExtension:nil];
    // 创建播放器
    self.player = [AVPlayer playerWithURL:url];
    // 播放音频
    [self.player play];
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
