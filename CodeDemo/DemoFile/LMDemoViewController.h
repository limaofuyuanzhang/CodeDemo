//
//  LMStringDemoViewController.h
//  CodeDemo
//
//  Created by 林涛 on 2019/9/24.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^DidSelectBlock)(NSIndexPath *indexPath);

@interface LMDemoViewController : UIViewController
@property (nonatomic, copy) NSArray *dataArray;
@property (nonatomic, copy) DidSelectBlock didSelectBlock;
@end

NS_ASSUME_NONNULL_END
