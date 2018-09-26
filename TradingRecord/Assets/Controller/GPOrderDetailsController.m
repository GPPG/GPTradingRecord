//
//  GPOrderDetailsController.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/19.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPOrderDetailsController.h"
#import "GPOrderDetailsTableViewCell.h"
#import "GPAddOrderView.h"

@interface GPOrderDetailsController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) GPAddOrderView *addOrderView;

@property (nonatomic,assign) float offsetY;


@end
static NSString * const GPOrderDetailsTableViewCellID = @"GPOrderDetailsTableViewCellID";

@implementation GPOrderDetailsController

#pragma mark - life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    
    [self setNav];
    
    [self regisCell];
    
    [self addView];
}

#pragma mark - set up
- (void)setupUI{
    
    self.tableView.rowHeight = 180;
    UIView *footerView = [[UIView alloc]init];
    self.tableView.tableFooterView = footerView;
    self.tableView.backgroundColor = GPCommonBgColor;
}

- (void)setNav{
    self.view.autoresizesSubviews = NO;
    self.title = @"持仓";
}

- (void)regisCell{
    SBTRegis(GPOrderDetailsTableViewCell, GPOrderDetailsTableViewCellID);
}

- (void)addView{
    
    self.addOrderView.frame = CGRectMake(SCREEN_WIDTH - 80, SCREEN_HEIGHT - 150, 60, 60);
    NSLog(@"%@",NSStringFromCGRect(self.addOrderView.frame));
    [self.view addSubview:self.addOrderView];
}

#pragma mark - tableView dataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GPOrderDetailsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:GPOrderDetailsTableViewCellID forIndexPath:indexPath];
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *headerView = [[UIView alloc]init];
    return headerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 25;
}

#pragma mark - scorllView delegate
 -(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    if (scrollView.contentOffset.y > self.offsetY && scrollView.contentOffset.y > 0) {
        [UIView animateWithDuration:0.5 delay:0.0 usingSpringWithDamping:0.3 initialSpringVelocity:5 options:UIViewAnimationOptionLayoutSubviews animations:^{
            self.addOrderView.frame = CGRectMake(SCREEN_WIDTH - 80, SCREEN_HEIGHT, 60, 60);;
        } completion:^(BOOL finished){}];
        
    }else if (scrollView.contentOffset.y < self.offsetY ){
        [UIView animateWithDuration:0.5 delay:0.0 usingSpringWithDamping:0.3 initialSpringVelocity:5 options:UIViewAnimationOptionLayoutSubviews animations:^{
            self.addOrderView.frame = CGRectMake(SCREEN_WIDTH - 80, SCREEN_HEIGHT - 150, 60, 60);;
        } completion:^(BOOL finished){}];
    }
    self.offsetY = scrollView.contentOffset.y;
}

#pragma mark - lazy
- (GPAddOrderView *)addOrderView
{
    if (!_addOrderView) {
        _addOrderView =  SBXV(GPAddOrderView);
    }
    return _addOrderView;
}

@end
