//
//  GPAddOrderView.h
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/19.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^AddActionBlock)(void);
@interface GPAddOrderView : UIView

@property (nonatomic, copy) AddActionBlock addActionBlock;

@end
