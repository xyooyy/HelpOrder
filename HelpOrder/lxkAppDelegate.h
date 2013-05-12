//
//  lxkAppDelegate.h
//  HelpOrder
//
//  Created by 李小康 on 5/6/13.
//  Copyright (c) 2013 李小康. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "lxkFirstViewController.h"

@interface lxkAppDelegate : UIResponder <UIApplicationDelegate>

@property (retain,nonatomic) NSString *tmpPerson;
@property (retain,nonatomic) NSString *tmpResturant;
@property (retain,nonatomic) NSString *tmpFood;
@property (nonatomic) NSInteger money;
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic)  lxkFirstViewController *FirsrView;
@property(strong,nonatomic) UINavigationController *navController;


@end
