//
//  HJTestCell.m
//  TableViewTest
//
//  Created by 覃玉红 on 15/9/18.
//  Copyright (c) 2015年 覃玉红. All rights reserved.
//

#import "HJTestCell.h"

@implementation HJTestCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setTouchBlock:(block)bl{
    bl(self);
    
}

@end
