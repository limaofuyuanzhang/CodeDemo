



//
//  TextFieldDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/24.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "TextFieldDemo0ViewController.h"

@interface TextFieldDemo0ViewController ()<UITextFieldDelegate>

@end

@implementation TextFieldDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH/2, 44)];
    textField.layer.borderWidth = 1;
    textField.layer.borderColor = [UIColor grayColor].CGColor;
    textField.delegate = self;
    [self.view addSubview:textField];
}

//是否允许开始编辑
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    NSLog(@"%s",__func__);
    return YES;
}
//开始编辑时调用(文本框成为第一响应者的时候调用)
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"%s",__func__);

}
//是否允许结束编辑
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    NSLog(@"%s",__func__);
    return YES;
}
//结束编辑时调用
- (void)textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"%s",__func__);
}
//是否允许文字改变(拦截用户输入)
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSLog(@"%s",__func__);
    return NO;
}

@end
