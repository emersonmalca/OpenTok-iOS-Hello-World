//
//  MainViewController.m
//  OpenTokHelloWorld
//
//  Created by Emerson Malca on 4/26/12.
//  Copyright (c) 2012 TutorMe. All rights reserved.
//

#import "MainViewController.h"
#import "HMGLTransitionManager.h"
#import "DoorsTransition.h"
#import "ViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)startOpenTok:(id)sender {
    ViewController *vc = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    [[HMGLTransitionManager sharedTransitionManager] setTransition:[[DoorsTransition alloc] init]];
    [[HMGLTransitionManager sharedTransitionManager] presentModalViewController:vc onViewController:self];
}

@end
