
//
//  VCDemo0ViewController.m
//  CodeDemo
//
//  Created by 林涛 on 2019/10/17.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "VCDemo0ViewController.h"

@interface VCDemo0ViewController ()

@end

@implementation VCDemo0ViewController

//类的初始化方法,只在这个类第一次创建对象的时候调用做一些类的准备工作
+ (void)initialize {
    [super initialize];
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

//对象初始化方法，从代码进行初始化会调用
- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
    return self;
    
}

//从归档初始化，如果从归档文件进行初始化，就会调用initWihCoder方法
- (IBAction)jumpBtn:(id)sender {
}
- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
    return self;
}

//在从xib或storyboard中加载的UIViewController将要被激活时被调用
-(void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

//加载视图，loadView方法是开始加载UI视图的初始方法，这个方法除非开发者手动调用，否则在UIViewController的生命周期中只会被调用一次。
-(void)loadView {
    [super loadView];
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

//法在视图已经加载完成后会被调用，因为这个函数被调用的时候，视图控制器的基本系统功能已经初始化完成，
//开发者一般会将一些Controller额外定义功能的初始化工作放在这个函数中。比如可以移除一些视图，修改约束，加载数据等。
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

//将要展示，在视图即将显示的时候调用，我们可以在这个方法里，改变当前屏幕方向或状态栏的风格等。
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillLayoutSubviews];
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

//将要布局子视图
-(void)viewWillLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

//已经布局子视图
-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

//已经展示视图，我们可以在这个方法中，对视图做一些关于展示效果方面的修改。
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

//将要消失，在视图将要消失时调用，开发者可以在其中做一些数据清理的操作。
-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

//已经消失
-(void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

//被释放，在对象被释放时调用，开发者可以通过在其中打印信息的方式检查一个类是否存在内存泄漏等问题。
-(void)dealloc {
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

/*
 内存警告，当系统发出内存警告的时候，会自动把 view 给清除掉，不用我们再特别处理。
 同时系统还会调用 didReceiveMemoryWarning 方法通知视图控制器，我们可以在这里面进行一些操作，
 来释放一些额外的资源。（通常来说不用操作，比较最占资源的 view 已经被系统给清理了。）
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}

@end
