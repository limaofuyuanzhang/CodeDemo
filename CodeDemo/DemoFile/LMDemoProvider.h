//
//  LMDemoProvider.h
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LMDemoProvider : NSObject
+ (void)runDemoWithOuterIndexPath:(NSIndexPath *)outerIndexPath
                   innerIndexPath:(NSIndexPath *)innerIndexPath
                    viewController:(UIViewController *)vc;
@end

NS_ASSUME_NONNULL_END
