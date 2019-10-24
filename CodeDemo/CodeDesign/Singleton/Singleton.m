


//
//  Singleton.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "Singleton.h"

static id _instance;

@implementation Singleton
+ (instancetype)sharedSingleton{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}
@end
