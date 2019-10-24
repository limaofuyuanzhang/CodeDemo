//
//  LabelDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/10.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "LabelDemo0ViewController.h"

@interface LabelDemo0ViewController ()

@end

@implementation LabelDemo0ViewController

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
    label1.lineBreakMode = NSLineBreakByWordWrapping;
    label1.numberOfLines = 2;
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
    label2.lineBreakMode = NSLineBreakByCharWrapping;
    label2.numberOfLines = 2;
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
    label3.lineBreakMode = NSLineBreakByClipping;
    label3.numberOfLines = 2;
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
    label4.lineBreakMode = NSLineBreakByTruncatingHead;
    label4.numberOfLines = 2;
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
    label5.lineBreakMode = NSLineBreakByTruncatingTail;
    label5.numberOfLines = 2;
    label5.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label5];
    [label5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label4.mas_bottom).offset(10);
        make.height.mas_equalTo(height);
    }];
    
    UILabel *label6 = [[UILabel alloc] init];
    label6.text = str;
    label6.lineBreakMode = NSLineBreakByTruncatingMiddle;
    label6.numberOfLines = 2;
    label6.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label6];
    [label6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label5.mas_bottom).offset(10);
        make.height.mas_equalTo(height);
    }];
    
    UILabel *label7 = [[UILabel alloc] init];
    label7.text = str;
    label7.lineBreakMode = NSLineBreakByWordWrapping;
    label7.numberOfLines = 1;
    label7.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label7];
    [label7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label6.mas_bottom).offset(10);
        make.height.mas_equalTo(height);
    }];
    
    UILabel *label8 = [[UILabel alloc] init];
    label8.text = str;
    label8.lineBreakMode = NSLineBreakByCharWrapping;
    label8.numberOfLines = 1;
    label8.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label8];
    [label8 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label7.mas_bottom).offset(10);
        make.height.mas_equalTo(height);
    }];
    
    UILabel *label9 = [[UILabel alloc] init];
    label9.text = str;
    label9.lineBreakMode = NSLineBreakByClipping;
    label9.numberOfLines = 1;
    label9.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label9];
    [label9 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label8.mas_bottom).offset(10);
        make.height.mas_equalTo(height);
    }];
    
    UILabel *label10 = [[UILabel alloc] init];
    label10.text = str;
    label10.lineBreakMode = NSLineBreakByTruncatingHead;
    label10.numberOfLines = 1;
    label10.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label10];
    [label10 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label9.mas_bottom).offset(10);
        make.height.mas_equalTo(height);
    }];
    
    UILabel *label11 = [[UILabel alloc] init];
    label11.text = str;
    label11.lineBreakMode = NSLineBreakByTruncatingTail;
    label11.numberOfLines = 1;
    label11.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label11];
    [label11 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label10.mas_bottom).offset(10);
        make.height.mas_equalTo(height);
    }];
    
    UILabel *label12 = [[UILabel alloc] init];
    label12.text = str;
    label12.lineBreakMode = NSLineBreakByTruncatingMiddle;
    label12.numberOfLines = 1;
    label12.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:label12];
    [label12 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(scrollView.mas_left);
        make.width.mas_equalTo(width);
        make.top.mas_equalTo(label11.mas_bottom).offset(10);
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
