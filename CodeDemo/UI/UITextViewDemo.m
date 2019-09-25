//
//  UITextViewDemo.m
//  CodeDemo
//
//  Created by Lin Tao on 23/9/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "UITextViewDemo.h"

@interface UITextViewDemo()<UITextViewDelegate>

@end

@implementation UITextViewDemo

/*
 * UITextView添加URL，该demo中的textView的delegate使用的是UITextDemo对象，因此要注意在对象delloc后无法调用协议
 */
- (void)textViewLinkDemoInView:(UIView *)view {
    
    UITextView *content = [[UITextView alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    content.dataDetectorTypes = UIDataDetectorTypeLink;  //检查URL
    content.linkTextAttributes = @{NSForegroundColorAttributeName : [UIColor blueColor]}; //设置URL颜色
    content.delegate = self;
    content.editable = NO;
    
    NSMutableAttributedString *atString = [[NSMutableAttributedString alloc] initWithString:@"xx用户协议，详细请看《最终用户许可协议》和《隐私政策》"];
    NSDictionary *linkDic1 = @{ NSLinkAttributeName : [NSURL URLWithString:@"protocol1"] };
    [atString setAttributes:linkDic1 range:[[atString string] rangeOfString:@"《最终用户许可协议》"]];
    NSDictionary *linkDic2 = @{ NSLinkAttributeName : [NSURL URLWithString:@"protocol2"]};
    [atString setAttributes:linkDic2 range:[[atString string] rangeOfString:@"《隐私政策》"]];
    content.attributedText = atString;
    [view addSubview:content];
}

#pragma mark - UITextViewDelegate

//iOS 7~10
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange {
    if ([URL.absoluteString isEqualToString:@"protocol1"]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.hao123.com"] options:@{} completionHandler:^(BOOL success) {
        }];
    } else if ([URL.absoluteString isEqualToString:@"protocol2"]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.baidu.com"] options:@{} completionHandler:^(BOOL success) {
        }];
    }
    return YES;
}

//iOS 10以上可用
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction {
    if ([URL.absoluteString isEqualToString:@"protocol1"]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.hao123.com"] options:@{} completionHandler:^(BOOL success) {
        }];
    } else if ([URL.absoluteString isEqualToString:@"protocol2"]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.baidu.com"] options:@{} completionHandler:^(BOOL success) {
        }];
    }
    return YES;
}


@end
