//
//  LMDemoProvider.m
//  CodeDemo
//
//  Created by 林涛 on 2019/9/25.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "LMDemoProvider.h"
#import "NSStringDemo.h"
#import "NSUserDefaultsDemo.h"
#import "UIFontDemo.h"
#import "UITextViewDemo.h"
#import "FileDemo.h"
#import "XibDemo.h"
#import "UIViewDemo.h"
#import "UITableViewDemo.h"
#import "AutoLayoutDemo.h"
#import "UIImageViewDemo.h"
#import "PasteboardDemo.h"
#import "LabelDemo.h"
#import "AVPlayerDemo.h"
#import "UIBezierPathDemo.h"
#import "ViewControllerDemo.h"
#import "ButtonDemo.h"
#import "CodeDesignDemo.h"
#import "AnimationDemo.h"
#import "OCDemo.h"
#import "ScrollViewDemo.h"
#import "NotificationDemo.h"
#import "ApplicationDemo.h"
#import "UIWindowDemo.h"
#import "PickViewDemo.h"
#import "CustomViewDemo.h"

@interface LMDemoProvider ()

@end

@implementation LMDemoProvider

+ (void)runDemoWithOuterIndexPath:(NSIndexPath *)outerIndexPath
                   innerIndexPath:(NSIndexPath *)innerIndexPath
                   viewController:(UIViewController *)vc{
    //基础类使用
    if (outerIndexPath.section == 0) {
        //字符串使用
        if (outerIndexPath.row == 0) {
            [self runStringDemoWithIndexPath:innerIndexPath];
            return;
        }
        
        if (outerIndexPath.row == 1) {
            [self runNSUserDefaultsDemoWithIndexPath:innerIndexPath];
            return;
        }
        
        //UIFont使用
        if (outerIndexPath.row == 2) {
            [self runUIFontDemoWithIndexPath:innerIndexPath];
            return;
        }
        
        //Pasteboard
        if (outerIndexPath.row == 3) {
            [self runPasteboardDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
    }
    
    //UI
    if (outerIndexPath.section == 1) {
        //TextView
        if (outerIndexPath.row == 0) {
            [self runTextViewDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        //Xib
        if (outerIndexPath.row == 1) {
            [self runXIBDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        //UIView
        if (outerIndexPath.row == 2) {
            [self runUIViewDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        //UITableView
        if (outerIndexPath.row == 3) {
            [self runUITableViewControllerDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        //Autolayout
        if (outerIndexPath.row == 4) {
            [self runAutolayoutDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        //UIImageView
        if (outerIndexPath.row == 5) {
            [self runImageViewDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        //UILabel
        if (outerIndexPath.row == 6) {
            [self runLabelDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        //UIBezierPath
        if (outerIndexPath.row == 7) {
            [self runBezierPathDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        //ViewController
        if (outerIndexPath.row == 8) {
            [self runVCDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        //Button
        if (outerIndexPath.row == 9) {
            [self runButtonDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        //ScrollView
        if (outerIndexPath.row == 10) {
            [self runScrollViewDemoIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        //PickView
        if (outerIndexPath.row == 11) {
            [self runPickViewDemoIndexPath:innerIndexPath vc:vc];
            return;
        }
        
    }
    
    //文件存取
    if (outerIndexPath.section == 2) {
        if (outerIndexPath.row == 0) {
            [self runFileDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
    }
    
    //多媒体
    if (outerIndexPath.section == 3) {
        if (outerIndexPath.row == 0) {
            [self runAVPlayerDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
    }
    
    //代码设计
    if (outerIndexPath.section == 4) {
        if (outerIndexPath.row == 0) {
            [self runCodeDesignDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
    }
    
    //动画
    if (outerIndexPath.section == 5) {
        if (outerIndexPath.row == 0) {
            [self runAnimationDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
    }
    
    //OC语法
    if (outerIndexPath.section == 6) {
        if (outerIndexPath.row == 0) {
            [self runOCDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
    }
    
    //System
    if (outerIndexPath.section == 7) {
        //Notification
        if (outerIndexPath.row == 0) {
            [self runNotificationDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
        
        if (outerIndexPath.row == 1) {
            [self runApplicationDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
    }
    
    /*
     自定义的各类界面实现
     */
    if (outerIndexPath.section == 8) {
        if (outerIndexPath.row == 0) {
            [self runCustomViewDemoWithIndexPath:innerIndexPath vc:vc];
            return;
        }
    }
}

#pragma mark - Base
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
        
        if (indexPath.row == 4) {
            [NSStringDemo removeStrDemo];
            return;
        }
        
        if (indexPath.row == 5) {
            [NSStringDemo rangStringDemo];
            return;
        }
    }
}

+ (void)runNSUserDefaultsDemoWithIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [NSUserDefaultsDemo NSUserDefaultSaveDemo];
            return;
        }
        
        if (indexPath.row == 1) {
            [NSUserDefaultsDemo NSUserDefaultReadDemo];
            return;
        }
    }
}

+ (void)runUIFontDemoWithIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [UIFontDemo differentFont];
            return;
        }
    }
}

+ (void)runPasteboardDemoWithIndexPath:(NSIndexPath *)indexPath
                                    vc:(UIViewController *)vc {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [PasteboardDemo pasteboardDemoShowInVC:vc];
            return;
        }
    }
}

#pragma mark - UI
+ (void)runTextViewDemoWithIndexPath:(NSIndexPath *)indexPath
                                  vc:(UIViewController *)vc{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [UITextViewDemo textViewLinkDemo];
            return;
        }
        
        if (indexPath.row == 1) {
            [UITextViewDemo limitTextViewNotificationDemoInVC:vc];
            return;
        }
    }
    
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            [UITextViewDemo textFieldDemo0InVC:vc];
            return;
        }
    }
}

+ (void)runXIBDemoWithIndexPath:(NSIndexPath *)indexPath
                             vc:(UIViewController *)vc {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [XibDemo readViewFromXIBDemo];
            return;
        }
        
        if (indexPath.row == 1) {
            [XibDemo xibDemo1InVC:vc];
            return;
        }
    }
    
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            [XibDemo sbDemo0InVC:vc];
            return;
        }
    }
}

+ (void)runUIViewDemoWithIndexPath:(NSIndexPath *)indexPath
                                vc:(UIViewController *)vc {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [UIViewDemo showCustomViewDemoShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [UIViewDemo countDownDemo];
            return;
        }
        
        if (indexPath.row == 2) {
            [UIViewDemo showTapView];
            return;
        }
        
        if (indexPath.row == 3) {
            [UIViewDemo setCorner];
            return;
        }
        
        if (indexPath.row == 4) {
            [UIViewDemo subViewsTestDemo];
            return;
        }
        
        if (indexPath.row == 5) {
            [UIViewDemo isSubviewDemo];
            return;
        }
        
        if (indexPath.row == 6) {
            [UIViewDemo cornerViewDemoShowInVC:vc];
        }
    }
}

+ (void)runUITableViewControllerDemoWithIndexPath:(NSIndexPath *)indexPath
                                               vc:(UIViewController *)vc {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [UITableViewDemo baseTableViewShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [UITableViewDemo groupTableViewShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 2) {
            [UITableViewDemo cancelTableViewHeaderStickShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 3) {
            [UITableViewDemo tableViewDemo3ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 4) {
            [UITableViewDemo tableViewDemo4ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 5) {
            [UITableViewDemo tableViewDemo5ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 6) {
            [UITableViewDemo tableViewDemo6ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 7) {
            [UITableViewDemo tableViewDemo7ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 8) {
            [UITableViewDemo tableViewDemo8ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 9) {
            [UITableViewDemo tableViewDemo9ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 10) {
            [UITableViewDemo tableViewDemo10ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 11) {
            [UITableViewDemo tableViewDemo11ShowInVC:vc];
            return;
        }
    }
}

+ (void)runAutolayoutDemoWithIndexPath:(NSIndexPath *)indexPath
                                    vc:(UIViewController *)vc {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [AutoLayoutDemo relayoutViewShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [AutoLayoutDemo relayoutView1ShowInVC:vc];
            return;
        }
    }
}

+ (void)runImageViewDemoWithIndexPath:(NSIndexPath *)indexPath
                                   vc:(UIViewController *)vc {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [UIImageViewDemo imageViewDemoShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [UIImageViewDemo imageViewDemo1ShowInVC:vc];
            return;
        }
    }
}

+ (void)runLabelDemoWithIndexPath:(NSIndexPath *)indexPath
                               vc:(UIViewController *)vc {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [LabelDemo LabelDemo0ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [LabelDemo LabelDemo1ShowInVC:vc];
            return;
        }
    }
}

+ (void)runBezierPathDemoWithIndexPath:(NSIndexPath *)indexPath
                                    vc:(UIViewController *)vc {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [UIBezierPathDemo bezierDemo0ShowInVC:vc];
            return;
        }
    }
}

+ (void)runVCDemoWithIndexPath:(NSIndexPath *)indexPath
                            vc:(UIViewController *)vc  {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [ViewControllerDemo vcDemo0ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [ViewControllerDemo vcDemo1ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 2) {
            [ViewControllerDemo vcDemo2ShowInVC:vc];
            return;
        }
    }
}

+ (void)runButtonDemoWithIndexPath:(NSIndexPath *)indexPath
                                vc:(UIViewController *)vc  {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [ButtonDemo buttonDemo0ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [ButtonDemo buttonDemo1ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 2) {
            [ButtonDemo buttonDemo2ShowInVC:vc];
            return;
        }
    }
}

+ (void)runScrollViewDemoIndexPath:(NSIndexPath *)indexPath
                                vc:(UIViewController *)vc  {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [ScrollViewDemo scrollViewDemo0InVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [ScrollViewDemo scrollViewDemo1InVC:vc];
            return;
        }
        
        if (indexPath.row == 2) {
            [ScrollViewDemo scrollViewDemo2InVC:vc];
            return;
        }
        
        if (indexPath.row == 3) {
            [ScrollViewDemo scrollViewDemo3InVC:vc];
            return;
        }
        
        if (indexPath.row == 4) {
            [ScrollViewDemo scrollViewDemo4InVC:vc];
            return;
        }
        
        if (indexPath.row == 5) {
            [ScrollViewDemo scrollViewDemo5InVC:vc];
            return;
        }
        
        if (indexPath.row == 6) {
            [ScrollViewDemo scrollViewDemo6InVC:vc];
            return;
        }
    }
}

+ (void)runPickViewDemoIndexPath:(NSIndexPath *)indexPath
                              vc:(UIViewController *)vc  {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [PickViewDemo pickViewDemo0InVC:vc];
            return;
        }
    }
}


#pragma mark - 文件存储
+ (void)runFileDemoWithIndexPath:(NSIndexPath *)indexPath
                              vc:(UIViewController *)vc{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [FileDemo readPlist];
            return;
        }
    }
}

#pragma mark - 多媒体
+ (void)runAVPlayerDemoWithIndexPath:(NSIndexPath *)indexPath
                                  vc:(UIViewController *)vc{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [AVPlayerDemo AVPlayerDemo0ShowInVC:vc];
            return;
        }
    }
}

#pragma mark - 代码网络设计
+ (void)runCodeDesignDemoWithIndexPath:(NSIndexPath *)indexPath
                                    vc:(UIViewController *)vc{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [CodeDesignDemo lazyLoadDemo0ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [CodeDesignDemo singletonDemo0ShowInVC:vc];
            return;
        }
    }
}

#pragma mark - 动画
+ (void)runAnimationDemoWithIndexPath:(NSIndexPath *)indexPath
                                   vc:(UIViewController *)vc{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [AnimationDemo animationDemo0ShowInVC:vc];
            return;
        }
    }
}

#pragma mark - OC语法
+ (void)runOCDemoWithIndexPath:(NSIndexPath *)indexPath
                            vc:(UIViewController *)vc{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [OCDemo kvcDemo0ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [OCDemo kvoDemo0ShowInVC:vc];
            return;
        }
    }
}

#pragma mark - System
+ (void)runNotificationDemoWithIndexPath:(NSIndexPath *)indexPath
                                      vc:(UIViewController *)vc{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [NotificationDemo notificatioDemo0ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [NotificationDemo notificatioDemo1ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 2) {
            [NotificationDemo notificatioDemo2ShowInVC:vc];
            return;
        }
    }
}

+ (void)runApplicationDemoWithIndexPath:(NSIndexPath *)indexPath
                                     vc:(UIViewController *)vc{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [ApplicationDemo applicationDemo0ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 1) {
            [ApplicationDemo applicationDemo1ShowInVC:vc];
            return;
        }
        
        if (indexPath.row == 2) {
            [ApplicationDemo applicationDemo2ShowInVC:vc];
            return;
        }
    }
}

+ (void)runWindowDemoWithIndexPath:(NSIndexPath *)indexPath
                                vc:(UIViewController *)vc{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [UIWindowDemo windowDemo0ShowInVC:vc];
            return;
        }
    }
}

#pragma mark - customView
+ (void)runCustomViewDemoWithIndexPath:(NSIndexPath *)indexPath
                                    vc:(UIViewController *)vc{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [CustomViewDemo customViewDemo0InVC:vc];
            return;
        }
    }
}
@end
