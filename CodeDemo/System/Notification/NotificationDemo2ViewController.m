


//
//  NotificationDemo2ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/22.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "NotificationDemo2ViewController.h"

@interface NotificationDemo2ViewController ()

@end

@implementation NotificationDemo2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH/2, 50)];
    textField.layer.borderWidth = 0.5;
    textField.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:textField];
    
    /*
     键盘状态改变的时候,系统会发出一些特定的通知
     UIKeyboardWillShowNotification // 键盘即将显示
     UIKeyboardDidShowNotification // 键盘显示完毕
     UIKeyboardWillHideNotification // 键盘即将隐藏
     UIKeyboardDidHideNotification // 键盘隐藏完毕
     UIKeyboardWillChangeFrameNotification // 键盘的位置尺寸即将发生改变
     UIKeyboardDidChangeFrameNotification // 键盘的位置尺寸改变完毕
     */
    
    /*
     系统发出键盘通知时,会附带一下跟键盘有关的额外信息(字典),字典常见的key如下:
     UIKeyboardFrameBeginUserInfoKey // 键盘刚开始的frame
     UIKeyboardFrameEndUserInfoKey // 键盘最终的frame(动画执行完毕后)
     UIKeyboardAnimationDurationUserInfoKey // 键盘动画的时间
     UIKeyboardAnimationCurveUserInfoKey // 键盘动画的执行节奏(快慢)
     */
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    
    //不生效，可以与queue有关
//    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardWillShowNotification object:self queue:nil usingBlock:^(NSNotification * _Nonnull note) {
//        NSLog(@"键盘即将出现:%@",note);
//    }];
//
//    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidShowNotification object:self queue:nil usingBlock:^(NSNotification * _Nonnull note) {
//        NSLog(@"键盘出现:%@",note);
//    }];
//
//    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardWillHideNotification object:self queue:nil usingBlock:^(NSNotification * _Nonnull note) {
//        NSLog(@"键盘即将隐藏:%@",note);
//    }];
//
//    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidHideNotification object:self queue:nil usingBlock:^(NSNotification * _Nonnull note) {
//        NSLog(@"键盘隐藏:%@",note);
//    }];
}

- (void)keyBoardDidShow:(NSNotification *)note {
    NSLog(@"键盘出现:%@",note);
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
