//
//  RelayoutViewController1.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/9.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "RelayoutViewController1.h"
#import <Masonry.h>

@interface RelayoutViewController1 ()
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) NSLayoutConstraint *heightConstraint;
@end

@implementation RelayoutViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor yellowColor];
    label.text = @"label";
    label.translatesAutoresizingMaskIntoConstraints = NO; //使用autolayout时需要将该属性设置为NO
    [self.view addSubview:label];
    self.label = label;
    
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:@"点击修改label高度" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(44);
        make.width.mas_equalTo(200);
        make.top.mas_equalTo(self.view).offset(0);
        make.left.mas_equalTo(self.view).offset(0);
    }];
    
    //使用原生
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:kNilOptions multiplier:1 constant:100];
    [label addConstraint:height];
    self.heightConstraint = height;
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:kNilOptions multiplier:1 constant:SCREEN_WIDTH];
    [label addConstraint:width];
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
    [self.view addConstraint:left];
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:100];
    [self.view addConstraint:top];
}

- (void)tap {
    self.heightConstraint.constant = 150;
    [self.view layoutIfNeeded];
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
