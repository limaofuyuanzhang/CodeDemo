//
//  UIWindow+ShareTestView.m
//  OnePiece
//
//  Created by 林涛 on 2019/9/5.
//  Copyright © 2019 YY. All rights reserved.
//

#import "UIWindow+ShareTestView.h"


#if DEBUG
#pragma mark - ShareTestView

@interface ShareTestView : UIView
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImage *image;

@end

@implementation ShareTestView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
       
        self.backgroundColor = [UIColor whiteColor];
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap= [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hide)];
        [self addGestureRecognizer:tap];
        
        [self addSubview:self.imageView];
    }
    return self;
}

- (void)hide
{
    [self removeFromSuperview];
}

- (UIImageView *)imageView
{
    if (_imageView == nil) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _imageView;
}

- (void)setImage:(UIImage *)image
{
    _image = image;
    _imageView.image = image;
}



@end

#pragma mark - UIWindow
@implementation UIWindow (ShareViewTest)
- (void)lm_showShareViewWithImage:(UIImage *)image
{
    ShareTestView *view = [[ShareTestView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    view.image = image;
    [self addSubview:view];
}

- (void)lm_showShareViewWithView:(UIView *)view
{
    ShareTestView *shareView = [[ShareTestView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    view.frame = CGRectMake(view.frame.origin.x, view.frame.origin.y+100, view.frame.size.width, view.frame.size.height);
    [shareView addSubview:view];
    [self addSubview:shareView];
}

+ (void)lm_showView:(UIView *)view
{
    ShareTestView *shareView = [[ShareTestView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    view.frame = CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, view.frame.size.height);
    [shareView addSubview:view];
    UIWindow *windows = [[UIApplication sharedApplication] keyWindow];
    [windows addSubview:shareView];
}



@end
#endif





