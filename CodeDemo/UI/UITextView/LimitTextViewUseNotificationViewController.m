
//
//  LimitTextViewUseNotificationViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/26.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "LimitTextViewUseNotificationViewController.h"

@interface LimitTextViewUseNotificationViewController ()
@property (nonatomic, strong) UITextView *textView;
@end

@implementation LimitTextViewUseNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH, 300)];
    self.textView = textView;
    self.textView.text = @"限制字数";
    self.textView.layer.borderWidth = 3;
    self.textView.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:self.textView];
    self.view.backgroundColor = [UIColor whiteColor];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTextViewDidChange:) name:UITextViewTextDidChangeNotification object:self.textView];
}

- (void)onTextViewDidChange:(NSNotification *)notification {
    UITextView *textView = notification.object;
    BOOL flag = (textView && textView == self.textView);
    if (flag == NO) {
        return;
    }
    
    NSUInteger maxLength = 20;
    //键盘输入模式
    NSString *lang = [[textView textInputMode] primaryLanguage];
    if (lang && [lang isEqualToString:@"zh-Hans"]) {
        // 简体中文输入，包括简体拼音，简体五笔，简体手写
        UITextRange *selectedRange = [textView markedTextRange];
        //获取高亮部分
        UITextPosition *position = [textView positionFromPosition:selectedRange.start offset:0];
        //没有高亮选择的字，则对已输入的文字进行字数统计和限制
        if (!position) {
            if (textView.text.length > maxLength) {
                textView.text = [textView.text substringToIndex:maxLength];
            }
        }
    } else {
        // 中文输入法以外的直接对其统计限制即可，不考虑其他语种情况
        if (textView.text.length > maxLength) {
            textView.text = [textView.text substringToIndex:maxLength];
        }
    }
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
