
//
//  GPAssetsHeadView.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/17.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPAssetsHeadView.h"

@interface GPAssetsHeadView()
@property (weak, nonatomic) IBOutlet UILabel *costingLabel;
@property (weak, nonatomic) IBOutlet UILabel *profitLabel;


@end

@implementation GPAssetsHeadView


- (void)awakeFromNib{
    
    [super awakeFromNib];
    
    [self setupUI];
    
}

- (void)setupUI{
    
    self.costingLabel.backgroundColor = GPTradingBlueColor;
    self.costingLabel.textColor = [UIColor whiteColor];
    self.costingLabel.font = [UIFont systemFontOfSize:13];
    
    self.profitLabel.backgroundColor = GPTradingWhiteBlueColor;
    self.profitLabel.textColor = [UIColor whiteColor];
    self.profitLabel.font = [UIFont systemFontOfSize:13];
}

@end
