//
//  CustomModel.h
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomModel : NSObject
/** 名字 */
@property (nonatomic,copy)NSString *name;

/** 图片 */
@property (nonatomic,copy)NSString *icon;

/** 通过字典初始化模型 */
- (instancetype)initWithDict:(NSDictionary *)dict;

/** 通过字典创建模型 */
+ (instancetype)shopWithDict:(NSDictionary *)dict;
@end

NS_ASSUME_NONNULL_END
