//
//  lxkMainViewController.m
//  HelpOrder
//
//  Created by 李小康 on 5/8/13.
//  Copyright (c) 2013 李小康. All rights reserved.
//

#import "lxkMainViewController.h"
#import "lxkAddViewController.h"
#import "lxkAddRestViewController.h"
#import "lxkAppDelegate.h"

@interface lxkMainViewController ()

@property (nonatomic,strong) UITextField *Person;
@property (nonatomic,strong) UITextField *resturant;
@property (nonatomic,strong) UITextField *food;
@property (nonatomic,strong) UILabel *personLabel;
@property (nonatomic,strong) UILabel *resturantLabel;
@property (nonatomic,strong) UILabel *foodLabel;

@end

@implementation lxkMainViewController

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
    self.appDelegate = [[UIApplication sharedApplication] delegate];
	// Do any additional setup after loading the view.
    self.title = @"订餐";
    
    //add the person choice interface
    self.personLabel =[[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, 200.0f, 30.0f)];
    self.personLabel.backgroundColor = [UIColor whiteColor];
    self.personLabel.text = @"人：";
    [self.view addSubview:self.personLabel];
    
    self.Person = [[UITextField alloc]
                      initWithFrame:CGRectMake(0.0f, 40.0f, 320.0f,30.0f)];
    self.Person.delegate = self;
    self.Person.enabled = NO;
    self.Person.text = @"点击选人...";
    self.Person.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.Person];
    UIButton *buttonPerson = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonPerson.frame = CGRectMake(0.0f, 80.0f, 320.0f, 50.0f);
    [buttonPerson setTitle:@"选人" forState:UIControlStateNormal];
    [buttonPerson addTarget:self action:@selector(addPersonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonPerson];
    //end add person choice
    
    //add the resturant choice interface
    self.resturantLabel =[[UILabel alloc] initWithFrame:CGRectMake(0.0f, 130.0f, 200.0f, 30.0f)];
    self.resturantLabel.backgroundColor = [UIColor whiteColor];
    self.resturantLabel.text = @"餐厅：";
    [self.view addSubview:self.resturantLabel];
    self.resturant = [[UITextField alloc]
                   initWithFrame:CGRectMake(0.0f, 160.0f, 320.0f, 30.0f)];
    self.resturant.delegate = self;
    self.resturant.enabled = NO;
    self.resturant.text = @"点击选餐厅...";
    self.resturant.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.resturant];
    UIButton *buttonResturant = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonResturant.frame = CGRectMake(0.0f, 200.0f, 320.0f, 50.0f);
    [buttonResturant setTitle:@"选餐厅" forState:UIControlStateNormal];
    [buttonResturant addTarget:self action:@selector(addResPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonPerson];
    [self.view addSubview:buttonResturant];
    //end add resturant choice
    
    //add the food choice interface
    self.foodLabel =[[UILabel alloc] initWithFrame:CGRectMake(0.0f, 250.0f, 200.0f, 30.0f)];
    self.foodLabel.backgroundColor = [UIColor whiteColor];
    self.foodLabel.text = @"套餐：";
    [self.view addSubview:self.foodLabel];
    self.food = [[UITextField alloc]
                      initWithFrame:CGRectMake(0.0f, 280.0f, 320.0f, 30.0f)];
    self.food.delegate = self;
    self.food.enabled = NO;
    self.food.text = @"点击选套餐...";
    self.food.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.food];
    UIButton *buttonfood = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonfood.frame = CGRectMake(0.0f, 320.0f, 320.0f, 50.0f);
    [buttonfood setTitle:@"选套餐" forState:UIControlStateNormal];
    [self.view addSubview:buttonfood];
    //end add resturant choice
    
    UIButton *buttonConfirm = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonConfirm.frame = CGRectMake(130.0f, 380.0f, 50.0f, 30.0f);
    [buttonConfirm setTitle:@"确定" forState:UIControlStateNormal];
    [buttonConfirm setTitleColor: [UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:buttonConfirm];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

-(void) addPersonPressed
{
    lxkAddViewController *nextView = [[lxkAddViewController alloc]init];
    [self.navigationController pushViewController:nextView animated:YES];
    nextView.title = @"选人";
}

-(void) addResPressed
{
    lxkAddRestViewController *nextView = [[lxkAddRestViewController alloc]init];
    [self.navigationController pushViewController:nextView animated:YES];
    nextView.title = @"选餐厅";
}

-(void)viewDidAppear:(BOOL)animated{
    if (self.appDelegate.tmpPerson != nil) {
        self.Person.text = self.appDelegate.tmpPerson;
    }
    
    if (self.appDelegate.tmpResturant != nil) {
    
        self.resturant.text = self.appDelegate.tmpResturant;
    }
}

@end
