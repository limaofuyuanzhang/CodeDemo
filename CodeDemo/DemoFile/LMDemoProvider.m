//
//  LMDemoProvider.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "LMDemoProvider.h"
#import "NSStringDemo.h"

@implementation LMDemoProvider

+ (void)runDemoWithOuterIndexPath:(NSIndexPath *)outerIndexPath
                   innerIndexPath:(NSIndexPath *)innerIndexPath {
    //基础类使用
    if (outerIndexPath.section == 0) {
        //字符串使用
        if (outerIndexPath.row == 0) {
            [self runStringDemoWithIndexPath:innerIndexPath];
            return;
        }
        
        
    }
}

+ (void)runStringDemoWithIndexPath:(NSIndexPath *)indexPath {
    //String基本使用
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [NSStringDemo calcOneLineSize];
            return;
        }
        
        if (indexPath.row == 1) {
            [NSStringDemo calcMutiLineSize];
            return;
        }
        
        if (indexPath.row == 2) {
            [NSStringDemo attributedStringDemo];
            return;
        }
        
        if (indexPath.row == 3) {
            [NSStringDemo attributedStringDemo1];
            return;
        }
    }
}
@end
