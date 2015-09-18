//
//  HJTestCell.h
//  TableViewTest
//
//  Created by 覃玉红 on 15/9/18.
//  Copyright (c) 2015年 覃玉红. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^block)(UITableViewCell* cell);

@interface HJTestCell : UITableViewCell

-(void)setTouchBlock:(block)bl;


@end
