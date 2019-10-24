//
//  MyView.h
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface CustomView : UIView
@property (nonatomic, strong) CustomModel *model;

- (instancetype)initWithModel:(CustomModel *)model;
- (void)updataWithInfo:(NSDictionary *)info;
- (void)addTapView;
@end

NS_ASSUME_NONNULL_END
