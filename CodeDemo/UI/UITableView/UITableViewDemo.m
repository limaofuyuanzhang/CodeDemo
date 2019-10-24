

//
//  UITableViewDemo.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/26.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "UITableViewDemo.h"
#import "BaseTableViewController.h"
#import "GroupTableViewController.h"
#import "CancelTableViewHeaderStickViewController.h"
#import "TableViewDemo3ViewController.h"
#import "TableViewDemo4ViewController.h"
#import "TableViewDemo5ViewController.h"
#import "TableViewDemo6ViewController.h"
#import "TableViewDemo7ViewController.h"
#import "TableViewDemo8ViewController.h"
#import "TableViewDemo9ViewController.h"
#import "TableViewDemo10ViewController.h"
#import "TableViewDemo11ViewController.h"

@implementation UITableViewDemo

+ (void)baseTableViewShowInVC:(UIViewController *)vc {
    BaseTableViewController *baseVC = [[BaseTableViewController alloc] init];
    [vc.navigationController pushViewController:baseVC animated:YES];
}

+ (void)groupTableViewShowInVC:(UIViewController *)vc {
    GroupTableViewController *groupVC = [[GroupTableViewController alloc] init];
    [vc.navigationController pushViewController:groupVC animated:YES];
}

+ (void)cancelTableViewHeaderStickShowInVC:(UIViewController *)vc {
    CancelTableViewHeaderStickViewController *cancelVC = [[CancelTableViewHeaderStickViewController alloc] init];
    [vc.navigationController pushViewController:cancelVC animated:YES];
}

+ (void)tableViewDemo3ShowInVC:(UIViewController *)vc {
    TableViewDemo3ViewController *demoVC = [[TableViewDemo3ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)tableViewDemo4ShowInVC:(UIViewController *)vc {
    TableViewDemo4ViewController *demoVC = [[TableViewDemo4ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)tableViewDemo5ShowInVC:(UIViewController *)vc {
    TableViewDemo5ViewController *demoVC = [[TableViewDemo5ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)tableViewDemo6ShowInVC:(UIViewController *)vc {
    TableViewDemo6ViewController *demoVC = [[TableViewDemo6ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)tableViewDemo7ShowInVC:(UIViewController *)vc {
    TableViewDemo7ViewController *demoVC = [[TableViewDemo7ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)tableViewDemo8ShowInVC:(UIViewController *)vc {
    TableViewDemo8ViewController *demoVC = [[TableViewDemo8ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)tableViewDemo9ShowInVC:(UIViewController *)vc {
    TableViewDemo9ViewController *demoVC = [[TableViewDemo9ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)tableViewDemo10ShowInVC:(UIViewController *)vc {
    TableViewDemo10ViewController *demoVC = [[TableViewDemo10ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

+ (void)tableViewDemo11ShowInVC:(UIViewController *)vc {
    TableViewDemo11ViewController *demoVC = [[TableViewDemo11ViewController alloc] init];
    [vc.navigationController pushViewController:demoVC animated:YES];
}

@end
