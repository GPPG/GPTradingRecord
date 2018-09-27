

//
//  GPAddOrderDetailsController.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/25.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPAddOrderDetailsController.h"
#import "GPAddOrderDetailsCell.h"
#import "GPAddOrderDetailHeadView.h"

static NSString * const GPAddOrderDetailsCellID = @"GPAddOrderDetailsCellID";


@interface GPAddOrderDetailsController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic)  UITableView *tableView;
@property (nonatomic, assign) OrderStyle orderStyle;

@end

@implementation GPAddOrderDetailsController

#pragma mark - life cycle

- (instancetype)initWithType:(OrderStyle)orderStyle{
    
    if (self = [super init]) {
        
        self.orderStyle = orderStyle;
        
        [self addView];
        
        [self setupUI];
        
        [self regisCell];
        
        [self setNav];

    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - set up

- (void)addView{
    [self.view addSubview:self.tableView];
}

- (void)setupUI{
    self.tableView.rowHeight = 80;
}

- (void)regisCell{
    SBTRegis(GPAddOrderDetailsCell, GPAddOrderDetailsCellID);
}

- (void)setNav{
    
    if (self.orderStyle == AddStyle) {
        self.title = @"添加";
    }else{
        self.title = @"更新";
    }
}

#pragma mark - tableView dataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GPAddOrderDetailsCell *cell = [tableView dequeueReusableCellWithIdentifier:GPAddOrderDetailsCellID forIndexPath:indexPath];
    
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    GPAddOrderDetailHeadView *headView = SBXV(GPAddOrderDetailHeadView);
    headView.backgroundColor = GPCommonBgColor;
    return headView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 40;
}



#pragma mark - lazy
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]init];
        _tableView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}


@end
