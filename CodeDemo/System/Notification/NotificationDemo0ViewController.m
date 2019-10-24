

//
//  NotificationDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/22.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "NotificationDemo0ViewController.h"

@interface NotificationDemo0ViewController ()

@end

@implementation NotificationDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"发送通过" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.layer.borderWidth = 1;
    button.layer.backgroundColor = [UIColor grayColor].CGColor;
    [button addTarget:self action:@selector(send) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).offset(0);
        make.right.mas_equalTo(self.view).offset(0);
        make.height.mas_equalTo(44);
        make.centerY.mas_equalTo(self.view).offset(0);
    }];
    
    /*
     observer：监听器，即谁要接收这个通知
     aSelector：收到通知后，回调监听器的这个方法，并且把通知对象当做参数传入
     aName：通知的名称。如果为nil，那么无论通知的名称是什么，监听器都能收到这个通知
     anObject：通知发布者。如果为anObject和aName都为nil，监听器都收到所有的通知
     */
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receive:) name:@"noti1" object:self];
    [[NSNotificationCenter defaultCenter] addObserverForName:@"noti2" object:self queue:nil usingBlock:^(NSNotification * _Nonnull note) {
        NSLog(@"%@",note);
    }];
    [[NSNotificationCenter defaultCenter] addObserverForName:@"noti3" object:self queue:nil usingBlock:^(NSNotification * _Nonnull note) {
        NSLog(@"%@",note);
    }];
}

- (void)send {
    /*
     - (NSString *)name; // 通知的名称
     - (id)object; // 通知发布者(是谁要发布通知)
     - (NSDictionary *)userInfo; // 一些额外的信息(通知发布者传递给通知接收者的信息内容)
     */
    NSNotification *noti1 = [NSNotification notificationWithName:@"noti1" object:self userInfo:@{@"key1":@"value1"}];
    [[NSNotificationCenter defaultCenter] postNotification:noti1];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"noti2" object:self];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"noti3" object:self userInfo:@{@"key2":@"value2"}];
}

- (void)receive:(NSNotification *)noti {
    NSLog(@"%@",noti);
}

- (void)dealloc {
    /*
     通知中心不会保留(retain)监听器对象，在通知中心注册过的对象，必须在该对象释放前取消注册。
     否则，当相应的通知再次出现时，通知中心仍然会向该监听器发送消息。
     因为相应的监听器对象已经被释放了，所以可能会导致应用崩溃
     */
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
