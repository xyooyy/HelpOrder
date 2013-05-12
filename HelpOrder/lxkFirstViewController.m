//
//  lxkFirstViewController.m
//  HelpOrder
//
//  Created by 李小康 on 5/9/13.
//  Copyright (c) 2013 李小康. All rights reserved.
//

#import "lxkFirstViewController.h"
#import "lxkMainViewController.h"


@interface lxkFirstViewController ()

@end

@implementation lxkFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //add the title of the first page
    self.title = @"帮订餐";
    //end of the add title

    
    //add the buttons
        //add the button for ording the food
    UIButton *OrderButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    OrderButton.frame = CGRectMake(10, 100, 300, 60);
    
    //set the background color of the buttton (just make there a image object)
    //[OrderButton setBackgroundImage:[] forState:UIControlStateNormal];
    //end of the set background image
    
    [OrderButton setTitle:@"帮订餐" forState:UIControlStateNormal];
    [OrderButton addTarget:self action:@selector(buttonOrderPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:OrderButton];
        //end of adding the button for ording
    
        //add the button for checking the sheets
    UIButton *CheckButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    CheckButton.frame = CGRectMake(10, 200, 300, 60);
    [CheckButton setTitle:@"查订单" forState:UIControlStateNormal];
    [self.view addSubview:CheckButton];
        //end of add
    //test the fun
    
   // [self buttonOrderPressed];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//when the OrderButton was pressed,this method will be taken
-(void)buttonOrderPressed
{
    lxkMainViewController *OrderView = [[lxkMainViewController alloc] init];
    [self.navigationController pushViewController:OrderView animated:YES];
    OrderView.title = @"订餐";
}

@end
