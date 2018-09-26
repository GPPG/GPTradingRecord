//
//  GPAddOrderView.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/19.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPAddOrderView.h"

@interface GPAddOrderView()

- (IBAction)addAction:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *addBtn;

@end

@implementation GPAddOrderView

- (void)awakeFromNib{
    [super awakeFromNib];
    
    [self setupUI];
}

- (void)setupUI{
    self.backgroundColor = GPTradingBlueColor;
}


- (void)layoutSubviews{
    [super layoutSubviews];
    
    NSLog(@"111:%@",NSStringFromCGRect(self.frame));

    self.layer.cornerRadius =  self.height * 0.5;
    self.layer.masksToBounds = YES;
}

- (IBAction)addAction:(id)sender {
    
    if (self.addActionBlock) {
        self.addActionBlock();
    }
}

@end
