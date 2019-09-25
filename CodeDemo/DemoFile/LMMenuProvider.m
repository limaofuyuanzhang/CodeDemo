//
//  LMMenuProvider.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "LMMenuProvider.h"

@implementation LMMenuProvider

+ (NSArray *)readThirdMenu:(NSIndexPath *)indexPath {
    NSArray *menu = [self readFirstMenu];
    NSArray *thirdMenu = menu[indexPath.section][@"data1"][indexPath.row][@"data2"];
    return thirdMenu;
}

+ (NSArray *)readFirstMenu {
    return [self readLocalFileWithName:@"menu"];
}

+ (NSArray *)readLocalFileWithName:(NSString *)name {
    // 获取文件路径
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:@"json"];
    // 将文件数据化
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    // 对数据进行JSON格式化并返回字典形式
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}
@end
