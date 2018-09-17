//
//  GPAddRecordCell.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/17.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPAddRecordCell.h"

@interface GPAddRecordCell()

@property (weak, nonatomic) IBOutlet UIView *containerView;

@end


@implementation GPAddRecordCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupUI];
}

- (void)setupUI{
    
    self.backgroundColor = GPCommonBgColor;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.containerView.layer.cornerRadius = 9;
    self.containerView.layer.masksToBounds = YES;
    self.containerView.backgroundColor = [UIColor colorWithHexString:@"3ec1d3"];
    
}

@end
