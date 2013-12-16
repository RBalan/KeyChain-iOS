//
//  MasterViewController.m
//  KeyChain
//
//  Created by Student on 16/12/13.
//  Copyright (c) 2013 DAPM. All rights reserved.
//

#import "MasterViewController.h"
#import "PasswordListViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

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
    
    UITextField *insertUser = [[UITextField alloc] initWithFrame:CGRectMake(10, 10, 80, 40)];
    insertUser.placeholder = @"Username";
    
    UITextField *insertPass = [[UITextField alloc] initWithFrame:CGRectMake(10, 60, 80, 40)];
    insertPass.placeholder = @"Password";
    insertPass.secureTextEntry = YES;
    
    UIButton *submitBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    submitBtn.titleLabel.text = @"Submit";
    submitBtn.frame = CGRectMake(self.view.bounds.size.width/2 - 30, self.view.bounds.size.width/2 - 30, 60, 60);
    
    [submitBtn addTarget:self action:@selector(submit) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:insertUser];
    [self.view addSubview:insertPass];
    [self.view addSubview:submitBtn];
	// Do any additional setup after loading the view.
}

- (void)submit
{
    PasswordListViewController *pListVC = [[PasswordListViewController alloc] init];
    [self.navigationController pushViewController:pListVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
