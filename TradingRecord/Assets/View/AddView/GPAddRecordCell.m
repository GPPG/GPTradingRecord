//
//  GPAddRecordCell.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/17.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPAddRecordCell.h"
#import "GPCurrentHoldOrderView.h"
#import "GPBearPositionView.h"


@interface GPAddRecordCell()

@property (weak, nonatomic) IBOutlet UIView *containerView;

@property (nonatomic, strong) GPCurrentHoldOrderView *holdOrderView;

@property (nonatomic, strong) GPBearPositionView *bearPositionView;

@end


@implementation GPAddRecordCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupUI];
    
    [self addView];
}

- (void)setupUI{
    
    self.backgroundColor = GPCommonBgColor;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.containerView.layer.cornerRadius = 9;
    self.containerView.layer.masksToBounds = YES;
    self.containerView.backgroundColor = [UIColor colorWithHexString:@"3ec1d3"];
}


- (void)addView{

    
}

- (GPCurrentHoldOrderView *)holdOrderView
{
    if (!_holdOrderView) {
        _holdOrderView = SBXV(GPCurrentHoldOrderView);
    }
    return _holdOrderView;
}

- (GPBearPositionView *)bearPositionView
{
    if (!_bearPositionView) {
        _bearPositionView = SBXV(GPBearPositionView);
    }
    return _bearPositionView;
}

@end
