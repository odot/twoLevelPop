//
//  CViewController.m
//  TwoLevelPop
//
//  Created by to2dot@gmail.com on 13-1-7.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "CViewController.h"
#import "BViewController.h"

@implementation CViewController

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
    
    self.title = @"Page C";
    self.view.backgroundColor = [UIColor brownColor];
    UIBarButtonItem* leftButton = [[UIBarButtonItem alloc] initWithTitle:@"back To Page B" style:UIBarButtonItemStyleBordered target:self action:@selector(popToBViewController:)];
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc] initWithTitle:@"back To Page A" style:UIBarButtonItemStyleBordered target:self action:@selector(popToAViewController:)];
    self.navigationItem.leftBarButtonItem = leftButton;
    self.navigationItem.rightBarButtonItem = rightButton;
    [leftButton release];
    [rightButton release];
}

- (void)popToBViewController:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)popToAViewController:(id)sender
{
    // 1. 如果前一个页面的前一个页面为rootViewController
//    [self.navigationController popToRootViewControllerAnimated:YES];
    
    // 2. 如果前一个页面的前一个页面不为rootViewController
    UIViewController* viewController = (UIViewController*)self.prevViewController.prevViewController;
    [self.navigationController popToViewController:viewController animated:YES];
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
