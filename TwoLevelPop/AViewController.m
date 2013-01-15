//
//  AViewController.m
//  TwoLevelPop
//
//  Created by to2dot@gmail.com on 13-1-7.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@implementation AViewController

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
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"Page A";
    self.view.backgroundColor = [UIColor grayColor];
    
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc] initWithTitle:@"go To Page B" style:UIBarButtonItemStyleBordered target:self action:@selector(pushBViewController:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    [rightButton release];
}

- (void)pushBViewController:(id)sender
{
    BViewController* bViewController = [[BViewController alloc] init];
    bViewController.prevViewController = self;
    [self.navigationController pushViewController:bViewController animated:YES];
    [bViewController release];
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
