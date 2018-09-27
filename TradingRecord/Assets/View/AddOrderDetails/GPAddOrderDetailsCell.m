
//
//  GPAddOrderDetailsCell.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/26.
//  Copyright © 2018 郭鹏. All rights reserved.
//

#import "GPAddOrderDetailsCell.h"


@interface GPAddOrderDetailsCell()

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end


@implementation GPAddOrderDetailsCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupUI];
    
}

- (void)setupUI{

    
}

@end
