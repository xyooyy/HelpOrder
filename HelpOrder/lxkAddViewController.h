//
//  lxkPersonAddViewController.h
//  HelpOrder
//
//  Created by 李小康 on 5/11/13.
//  Copyright (c) 2013 李小康. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lxkAddViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
{
    UITableView *personTableView;
    NSMutableArray *personArr;
    NSDictionary *jsonDic;
}

@property (nonatomic,retain) UITableView *personTableView;
@property (nonatomic,retain) NSMutableArray *personArr;
@property (nonatomic,retain) NSDictionary *jsonDic;
@end
