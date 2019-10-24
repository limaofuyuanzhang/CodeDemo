//
//  XMGPerson.h
//  10-KVC
//
//  Created by ios1 on 16/12/12.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XMGDog;
@interface XMGPerson : NSObject

{
    @private
    double _height;
}

@property (nonatomic ,copy) NSString *name;
@property (nonatomic ,assign) int age;
@property (nonatomic ,strong) XMGDog *dog;

- (void)logHeight;
@end
