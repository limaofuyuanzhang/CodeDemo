


//
//  PickViewDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/23.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "PickViewDemo0ViewController.h"

@interface PickViewDemo0ViewController ()<UIPickerViewDataSource,UIPickerViewDelegate>
@property (nonatomic, strong) UIPickerView *pickView;
@end

@implementation PickViewDemo0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIPickerView *pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 100, 375, 200)];
    //设置数据源
    pickerView.delegate = self;
    //设置代理
    pickerView.dataSource = self;
    [self.view addSubview:pickerView];
    self.pickView = pickerView;

}

//总共有多少列(components)
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}


//每一列有有多少行
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 5;
}



//设置每一行的宽度
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    return 200;
}

//每一行的高度
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 50;
}

//每一行展示什么内容
- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return @"xmg";
}
//展示带有属性的内容(文字的颜色,大小...)
//- (nullable NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component{
//
//}

//每行展示什么样的视图
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(nullable UIView *)view{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    return btn;
}

//选中某一行的时候调用
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"component===%ld    row===%ld",component,row);
}


@end
