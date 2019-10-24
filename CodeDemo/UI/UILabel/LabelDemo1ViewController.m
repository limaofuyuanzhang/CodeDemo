
//
//  LabelDemo1ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/10.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "LabelDemo1ViewController.h"

@interface LabelDemo1ViewController ()

@end

@implementation LabelDemo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = [UIColor whiteColor];
    scrollView.contentSize = CGSizeMake(SCREEN_WIDTH, 2*SCREEN_HEIGHT);
    [self.view addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left);
        make.right.mas_equalTo(self.view.mas_right);
        make.top.mas_equalTo(self.view.mas_top);
        make.bottom.mas_equalTo(self.view.mas_bottom);
    }];
    
    NSString *str = @"Telechargez et consultez les catalogues et les tarifs de la gamme Audi au format PDF";
    CGFloat width = 200;
    CGFloat height = 100;
    
    UILabel *label1 = [[UILabel alloc] init];
    label1.text = str;
    label1.textAlignment = NSTextAlignmentLeft;
    label1.numberOfLines = 0;
    label1.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label1];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(scrollView.mas_top);
        make.height.mas_equalTo(height);
    }];
    
    UILabel *label2 = [[UILabel alloc] init];
    label2.text = str;
    label2.textAlignment = NSTextAlignmentCenter;
    label2.numberOfLines = 0;
    label2.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label2];
    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label1.mas_bottom).offset(10);
        make.height.mas_equalTo(height);
    }];
    
    UILabel *label3 = [[UILabel alloc] init];
    label3.text = str;
    label3.textAlignment = NSTextAlignmentRight;
    label3.numberOfLines = 0;
    label3.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label3];
    [label3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label2.mas_bottom).offset(10);
        make.height.mas_equalTo(height);
    }];
    
    UILabel *label4 = [[UILabel alloc] init];
    label4.text = str;
    label4.textAlignment = NSTextAlignmentJustified;
    label4.numberOfLines = 0;
    label4.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label4];
    [label4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label3.mas_bottom).offset(10);
        make.height.mas_equalTo(height);
    }];
    
    UILabel *label5 = [[UILabel alloc] init];
    label5.text = str;
    label5.textAlignment = NSTextAlignmentNatural;
    label5.numberOfLines = 0;
    label5.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label5];
    [label5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label4.mas_bottom).offset(10);
        make.height.mas_equalTo(height);
    }];
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
