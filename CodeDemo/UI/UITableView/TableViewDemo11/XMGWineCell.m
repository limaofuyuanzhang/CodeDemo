//
//  XMGWineCell.m
//  05-数据刷新01-
//
//  Created by ios1 on 16/12/21.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import "XMGWineCell.h"
#import "XMGWine.h"

@interface XMGWineCell ()

/** 打钩控件 */
@property (nonatomic ,weak)UIImageView *checkedImageView;
@end

@implementation XMGWineCell
// 添加子控件
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        /** 打钩控件 */
        UIImageView *checkedImageView = [[UIImageView alloc] init];
        checkedImageView.image = [UIImage imageNamed:@"check"];
        checkedImageView.hidden = YES;
        [self.contentView addSubview:checkedImageView];
        self.checkedImageView = checkedImageView;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    // 打钩控件
    CGFloat checkWH = 24;
    CGFloat checkX = self.contentView.frame.size.width - checkWH - 10;
    CGFloat checkY = (self.contentView.frame.size.height - checkWH) * 0.5;
    self.checkedImageView.frame = CGRectMake(checkX, checkY, checkWH, checkWH);
    
    // 调整textLabel的宽度
    CGRect frame = self.textLabel.frame;
    frame.size.width = self.contentView.frame.size.width - self.textLabel.frame.origin.x - checkWH - 20;
    self.textLabel.frame = frame;
}

- (void)setWine:(XMGWine *)wine
{
    _wine = wine;
    self.textLabel.text = wine.name;
    self.imageView.image = [UIImage imageNamed:wine.image];
    self.detailTextLabel.text = [NSString stringWithFormat:@"¥%@",wine.money];
    
    // 根据模型的check属性决定打钩显示还是隐藏
    if (wine.isCheck) { // 打钩
        self.checkedImageView.hidden = NO;
    } else { // 没有打钩
        self.checkedImageView.hidden = YES;
    }
}
@end
