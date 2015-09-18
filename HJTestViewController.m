//
//  HJTestViewController.m
//  TableViewTest
//
//  Created by 覃玉红 on 15/9/17.
//  Copyright (c) 2015年 覃玉红. All rights reserved.
//

#import "HJTestViewController.h"
#import <Foundation/Foundation.h>
#import "HJTestCell.h"

@interface HJTestViewController ()

@end

@implementation HJTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [self.tableView registerClass:[HJTestCell class] forCellReuseIdentifier:@"TestCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 1;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    HJTestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TestCell" forIndexPath:indexPath];
    
//不会造成内存泄漏，但refreshData方法放到这里不合适，即使数据没有更新也会调用
    
    [cell setTouchBlock:^(UITableViewCell *cell) {
        [self refreshData];
    }];
    
    cell.textLabel.text=@"hong";
    
    return cell;
}

-(void)refreshData{
    NSLog(@"refreshData");
}




@end
