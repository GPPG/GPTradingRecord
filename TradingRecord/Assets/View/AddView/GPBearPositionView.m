//
//  GPBearPositionView.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/17.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPBearPositionView.h"

@interface GPBearPositionView()
@property (weak, nonatomic) IBOutlet UILabel *hintLabel;

@end


@implementation GPBearPositionView

- (void)awakeFromNib{
    [super awakeFromNib];

    [self setupUI];
}

- (void)setupUI{
    self.hintLabel.font = [UIFont systemFontOfSize:20];
    self.hintLabel.text = @"空仓是一种智慧";
}

@end
