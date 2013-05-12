//
//  lxkMainViewController.h
//  HelpOrder
//
//  Created by 李小康 on 5/8/13.
//  Copyright (c) 2013 李小康. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "lxkAppDelegate.h"

@interface lxkMainViewController : UIViewController <UINavigationControllerDelegate,UITextFieldDelegate>
{
    lxkAppDelegate *appDelegat;
}

@property (retain,nonatomic) lxkAppDelegate *appDelegate;

@end
