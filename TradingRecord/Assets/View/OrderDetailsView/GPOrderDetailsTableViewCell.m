//
//  GPOrderDetailsTableViewCell.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/19.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPOrderDetailsTableViewCell.h"

@interface GPOrderDetailsTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *coinKindLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *openPositionsLabel;
@property (weak, nonatomic) IBOutlet UILabel *tradinglPositionLabel;

@property (weak, nonatomic) IBOutlet UILabel *stopLossLabel;

@property (weak, nonatomic) IBOutlet UILabel *stopProfitLabel;

@end

@implementation GPOrderDetailsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupUI];
}

- (void)setupUI{
    
    self.layer.cornerRadius = 9;
    self.layer.masksToBounds = YES;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
}

@end
