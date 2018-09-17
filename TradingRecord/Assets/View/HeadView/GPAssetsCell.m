//
//  GPAssetsCell.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/17.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPAssetsCell.h"
#import "GPAssetsHeadView.h"

@interface GPAssetsCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *assetLabel;
@property (weak, nonatomic) IBOutlet UIView *assetView;

@property (nonatomic, strong) GPAssetsHeadView *headView;

@end

@implementation GPAssetsCell

- (void)awakeFromNib {
    [super awakeFromNib];

    [self addView];
    
    [self setupUI];
    
}

- (void)addView{
    
    [self.assetView addSubview:self.headView];
    self.layer.cornerRadius = 9;
    self.layer.masksToBounds = YES;
}

- (void)setupUI{
    
    self.titleLabel.backgroundColor = [UIColor whiteColor];
    self.assetLabel.backgroundColor = [UIColor whiteColor];
    self.titleLabel.font = [UIFont systemFontOfSize:15];
    self.assetLabel.font = [UIFont systemFontOfSize:20];
    self.contentView.backgroundColor = GPCommonBgColor;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    [self.headView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.assetView);
    }];
}

- (GPAssetsHeadView *)headView
{
    if (!_headView) {
        _headView = SBXV(GPAssetsHeadView);
    }
    return _headView;
}

@end
