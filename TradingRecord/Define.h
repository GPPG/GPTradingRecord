//
//  Define.h
//  TradingRecord
//
//  Created by 郭鹏 on 2018/9/7.
//  Copyright © 2018年 郭鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Define : NSObject

#define SBVC(vcName) [UIStoryboard storyboardWithName:NSStringFromClass([vcName class]) bundle:nil].instantiateInitialViewController
#define SBTRegis(ViewName,CellID)  [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([ViewName class]) bundle:nil] forCellReuseIdentifier:CellID]

#define SBCHRegis(viewName,CellId)  [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([viewName class]) bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:CellId]

#define SBDC(CellID,indexPath) [collectionView dequeueReusableCellWithReuseIdentifier:CellID forIndexPath:indexPath]
#define SBDCH(CellID) [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:CellID forIndexPath:indexPath]

#define SBXV(ClassName) [[NSBundle mainBundle]loadNibNamed:NSStringFromClass([ClassName class]) owner:nil options:nil].firstObject

#define GPRandomColor GPColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))
#define GPColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define GPColorA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]

@end
