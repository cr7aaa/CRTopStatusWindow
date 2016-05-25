//
//  ViewController.m
//  CRTopStatusWindow
//
//  Created by lyw on 16/5/25.
//  Copyright © 2016年 lyw. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView * scrollView = [[UIScrollView alloc]init];
    [self.view addSubview:scrollView];
    scrollView.frame = CGRectMake(0, 30, [UIScreen mainScreen].bounds.size.width, 100);
    scrollView.backgroundColor = [UIColor redColor];
    scrollView.contentSize = CGSizeMake(0, [UIScreen mainScreen].bounds.size.height+200);
    
    UIView * yellowV = [[UIView alloc]init];
    yellowV.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:yellowV];
    yellowV.frame = CGRectMake(50, 150, 50, 40);
    
    UITableView * tableview = [[UITableView alloc]init];
    [self.view addSubview:tableview];
    tableview.dataSource = self;
    tableview.frame = CGRectMake(0, 150, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    
}


#pragma mark dataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 30;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}


@end
