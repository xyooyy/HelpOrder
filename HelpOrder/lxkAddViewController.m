//
//  lxkPersonAddViewController.m
//  HelpOrder
//
//  Created by 李小康 on 5/11/13.
//  Copyright (c) 2013 李小康. All rights reserved.
//

#import "lxkAddViewController.h"
#import "lxkMainViewController.h"
#import "JSONKit.h"
#import "lxkAppDelegate.h"

@interface lxkAddViewController ()

@end

@implementation lxkAddViewController
@synthesize personArr;
@synthesize personTableView;
@synthesize jsonDic;

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
    
    NSString *jSONFile = [[NSBundle mainBundle]pathForResource:@"users" ofType:@"json"];
    
    
    NSString *jsonContent = [[NSString alloc] initWithContentsOfFile:jSONFile encoding:NSUTF8StringEncoding error:nil];
    
    NSData *jsonData = [jsonContent dataUsingEncoding:NSUTF8StringEncoding];
    self.jsonDic = [jsonData objectFromJSONData];
    
    self.personTableView = [[UITableView alloc]initWithFrame:CGRectMake(0.0f, 10.0f, 320.0f, 400.0f)];
    
    [self.view addSubview:self.personTableView];
    self.personTableView.delegate = self;
    self.personTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.jsonDic count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *TableIndentifier = @"person";
    
    UITableViewCell * cell = [personTableView dequeueReusableCellWithIdentifier:TableIndentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:TableIndentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    NSUInteger row = [indexPath row];
    
    cell.textLabel.text = [[(NSArray *)jsonDic objectAtIndex:row] objectForKey:@"name"];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *msg = [[NSString alloc]initWithFormat:@"现在为%@订餐！",[[(NSArray *)jsonDic objectAtIndex:indexPath.row] objectForKey:@"name"]];
    
    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"选人" message:msg delegate:nil cancelButtonTitle:@"关闭" otherButtonTitles:nil, nil];
    [alter show];
    
    lxkAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.tmpPerson = [[(NSArray *)jsonDic objectAtIndex:indexPath.row] objectForKey:@"name"];
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
