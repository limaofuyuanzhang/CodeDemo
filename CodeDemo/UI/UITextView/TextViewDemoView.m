//
//  TextViewDemoView.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "TextViewDemoView.h"

@interface TextViewDemoView()<UITextViewDelegate>


@end

@implementation TextViewDemoView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self _initView];
    }
    return self;
}

- (void)_initView {
    UITextView *content = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
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
     [self addSubview:content];
}

#pragma mark - UITextViewDelegate

//iOS 7~10
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange {
    if ([URL.absoluteString isEqualToString:@"protocol1"]) {
        if (@available(iOS 10.0, *)) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.hao123.com"] options:@{} completionHandler:^(BOOL success) {
            }];
        } else {
            // Fallback on earlier versions
        }
    } else if ([URL.absoluteString isEqualToString:@"protocol2"]) {
        if (@available(iOS 10.0, *)) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.baidu.com"] options:@{} completionHandler:^(BOOL success) {
            }];
        } else {
            // Fallback on earlier versions
        }
    }
    return YES;
}

//iOS 10以上可用
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction  API_AVAILABLE(ios(10.0)){
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
