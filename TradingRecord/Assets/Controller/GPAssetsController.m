


//
//  GPAssetsController.m
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/10.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import "GPAssetsController.h"
#import "GPAssetsCell.h"
#import "DWFlowLayout.h"
#import "GPAddRecordCell.h"

static NSString * const GPAssetsCellID = @"GPAssetsCellID";

static NSString * const GPAddRecordCellID = @"GPAddRecordCellID";

@interface GPAssetsController ()<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) UICollectionView *collectionView;
@end

@implementation GPAssetsController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addView];
    
    [self regisCell];
    
    [self setupUI];
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

#pragma mark - set up

- (void)addView{
    
    
}

- (void)regisCell{
    SBCRegis(GPAssetsCell, GPAssetsCellID);
    SBTRegis(GPAddRecordCell, GPAddRecordCellID);
}

- (void)setupUI{
    
    self.view.backgroundColor = GPCommonBgColor;
    self.tableView.rowHeight = SCREEN_HEIGHT * 0.3;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.backgroundColor = GPCommonBgColor;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.tableHeaderView = self.collectionView;
    self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 20, 0);
}

#pragma mark - UICollectionView Data Source
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 3;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    GPAssetsCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:GPAssetsCellID forIndexPath:indexPath];
    return cell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(SCREEN_WIDTH - 60, SCREEN_HEIGHT * 0.2);
}

#pragma mark - UICollectionView Delegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

}

#pragma mark - UITableView Data Source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GPAddRecordCell *cell = [tableView dequeueReusableCellWithIdentifier:GPAddRecordCellID forIndexPath:indexPath];
    return cell;
}

#pragma mark - lazy
- (UICollectionView *)collectionView
{
    if (!_collectionView) {
        DWFlowLayout *layout = [[DWFlowLayout alloc] init];
        [layout setPagingEnabled:YES];
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT * 0.25) collectionViewLayout:layout];
        _collectionView.collectionViewLayout = layout;
        _collectionView.backgroundColor = GPCommonBgColor;
        _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
    }
    return _collectionView;
}

@end
