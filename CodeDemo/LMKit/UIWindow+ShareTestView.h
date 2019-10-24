//
//  UIWindow+ShareTestView.h
//  OnePiece
//
//  Created by 林涛 on 2019/9/5.
//  Copyright © 2019 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIWindow (ShareTestView)
- (void)lm_showShareViewWithImage:(UIImage *)image;
- (void)lm_showShareViewWithView:(UIView *)view;
+ (void)lm_showView:(UIView *)view;
@end

NS_ASSUME_NONNULL_END
