//
//  KVCDemoViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "KVCDemoViewController.h"
#import "XMGDog.h"
#import "XMGPerson.h"

@interface KVCDemoViewController ()

@end

@implementation KVCDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        XMGPerson *p = [[XMGPerson alloc] init];
        p.name = @"rose";
        p.age = 123;
        NSLog(@"%@-%@",[p valueForKeyPath:@"name"],[p valueForKeyPath:@"age"]);
        
        //以字典形式取值
        NSDictionary *dict = [p dictionaryWithValuesForKeys:@[@"name",@"age"]];
        NSLog(@"%@",dict);
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
