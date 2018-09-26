

//
//  GPCurrentHoldOrderView.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/17.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPCurrentHoldOrderView.h"

@interface GPCurrentHoldOrderView()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *orderSendLabel;
@property (weak, nonatomic) IBOutlet UILabel *profitLossLabel;
@property (weak, nonatomic) IBOutlet UILabel *stopLossLabel;
@property (weak, nonatomic) IBOutlet UILabel *stopProfitLabel;

@end


@implementation GPCurrentHoldOrderView

- (void)awakeFromNib{
    [super awakeFromNib];
    
    [self setupUI];
    
}

- (void)setupUI{
    self.backgroundColor = GPTradingWhiteBlueColor;
    
    self.titleLabel.text = @"现货 BTC";
    self.orderSendLabel.text = @"开仓均价: 6500";
    self.profitLossLabel.text = @"盈亏比: 2 : 1";
    self.stopLossLabel.text = @"止损价格: 6200";
    self.stopProfitLabel.text = @"止盈价格: 7100";
    
}

@end
