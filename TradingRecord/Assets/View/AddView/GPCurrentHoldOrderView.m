

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
    
    
}

@end
