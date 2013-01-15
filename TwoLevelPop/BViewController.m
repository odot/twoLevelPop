//
//  BViewController.m
//  TwoLevelPop
//
//  Created by to2dot@gmail.com on 13-1-7.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"
#import "AViewController.h"
@implementation BViewController

@synthesize prevViewController = _prevViewController;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Page B";
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    UIBarButtonItem* leftButton = [[UIBarButtonItem alloc] initWithTitle:@"back To Page A" style:UIBarButtonItemStyleBordered target:self action:@selector(popToAViewController:)];
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc] initWithTitle:@"go To Page C" style:UIBarButtonItemStyleBordered target:self action:@selector(pushCViewController:)];
    self.navigationItem.leftBarButtonItem = leftButton;
    self.navigationItem.rightBarButtonItem = rightButton;
    [leftButton release];
    [rightButton release];
}

- (void)popToAViewController:(id)sender
{
    NSLog(@"popToAViewController");
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)pushCViewController:(id)sender
{
    CViewController* cViewController = [[CViewController alloc] init];
    cViewController.prevViewController = self;
    [self.navigationController pushViewController:cViewController animated:YES];
    [cViewController release];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
