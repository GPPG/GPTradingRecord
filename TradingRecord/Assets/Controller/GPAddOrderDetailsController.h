//
//  GPAddOrderDetailsController.h
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/25.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,OrderStyle){
    AddStyle = 0,
    UpdateStyle,
};

@interface GPAddOrderDetailsController : UIViewController

- (instancetype)initWithType:(OrderStyle)orderStyle;

@end
