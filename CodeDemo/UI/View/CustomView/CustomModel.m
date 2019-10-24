//
//  CustomModel.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "CustomModel.h"

@implementation CustomModel
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        self.name = dict[@"name"];
        self.icon = dict[@"icon"];
    }
    return self;
}


+ (instancetype)shopWithDict:(NSDictionary *)dict
{
    CustomModel *shop = [[self alloc] initWithDict:dict];
    return shop;
}
@end
