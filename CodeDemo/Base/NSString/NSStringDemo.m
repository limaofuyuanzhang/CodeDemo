//
//  NSStringDemo.m
//  CodeDemo
//
//  Created by Lin Tao on 9/9/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "NSStringDemo.h"
#import <Toast.h>
#import "UIWindow+ShareTestView.h"

@implementation NSStringDemo

/*
 
 */
+ (void)calcOneLineSize {
    NSString *str = @"一行文字";
    CGSize size = [str sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:19]}];
    NSLog(@"width:%f,height:%f",size.width,size.height);
}

+ (void)calcMutiLineSize {
    NSString *str = @"1.多行文字多行文字\n2.多行文字\n3.多行文字";
    CGRect rect = [str boundingRectWithSize:CGSizeMake(100, 100) options:NSStringDrawingUsesFontLeading|
                   NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14]} context:nil];
    CGSize size = rect.size;
    NSLog(@"width:%f,height:%f",size.width,size.height);
    
}

+ (void)attributedStringDemo {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    NSString *str1 =@"欢迎再次回来：Admin";
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:str1 attributes:@{NSForegroundColorAttributeName:[UIColor blueColor]}];
    label.attributedText = attrStr;
    [UIWindow lm_showView:label];
}

//行间距，段间距
+ (void)attributedStringDemo1 {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 600)];
    label.numberOfLines = 0;
    
    NSMutableParagraphStyle *style = [NSMutableParagraphStyle new];
    style.alignment = NSTextAlignmentJustified;
    style.lineSpacing = 2; //行间距
    style.paragraphSpacing = 8; //段间距
    NSString *contentString = @"欢迎使用xx APP！\n我们非常重视用户的隐私和个人信息保护。"
    "您在使用我们的产品或服务时，我们可能会收集和使用您的相关信息：\n1、您在我们平台上注册账户或使用浏览推荐、直播互动相关服务时，"
    "将会提供与使用服务相关的个人信息（可能包括联络方式、位置、交易等敏感信息）；\n2、未经您同意，我们不会出售或出租您的任何信息；\n3、"
    "您可以对上述信息进行访问、更正、删除以及撤回同意等。\n更多详细信息，"
    "欢迎您点击查看《最终用户许可协议》与《隐私政策》，感谢您的信任！";
    NSMutableAttributedString *atString = [[NSMutableAttributedString alloc] initWithString:contentString attributes:@{NSParagraphStyleAttributeName:style}];
    label.attributedText = atString;
    [UIWindow lm_showView:label];
}

//移除字符串中的特定字符
+ (void)removeStrDemo {
    NSString *str = @"111234511234";
    NSMutableString *mutStr = [NSMutableString stringWithString:str];
    NSLog(@"替换前:%@",mutStr);
    NSRange range = {0,str.length};
    [mutStr replaceOccurrencesOfString:@"1" withString:@"" options:NSLiteralSearch range:range];
    NSLog(@"替换后:%@",mutStr);
}

+ (void)rangStringDemo {
    NSString *str0 = @"123欢迎欢迎12";
    NSString *str1 = @"123欢迎12";
    NSString *str2 = @"xxx";
    NSString *subStr = @"欢迎";
    NSRange range0 = [str0 rangeOfString:subStr];
    NSRange range1 = [str1 rangeOfString:subStr];
    NSRange range2 = [str2 rangeOfString:subStr];
    NSLog(@"range0:%@",NSStringFromRange(range0));
    NSLog(@"range1:%@",NSStringFromRange(range1));
    NSLog(@"range2:%@",NSStringFromRange(range2));
    if (range1.location != NSNotFound) {
        NSLog(@"使用location判断找到");
    }
    if (range1.length > 0) {
        NSLog(@"使用length判断找到");
    }
    
    if (range2.location == NSNotFound) {
        NSLog(@"使用location判断没找到");
    }
    if (range2.length == 0) {
        NSLog(@"使用length判断没找到");
    }
}

@end
