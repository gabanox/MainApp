//
//  LeftViewController.m
//  MainApp
//
//  Created by Gabriel Ramirez on 4/24/13.
//  Copyright (c) 2013 badge.me. All rights reserved.
//

#import "LeftViewController.h"
#import "PKRevealController.h"

@interface LeftViewController ()

@end

@implementation LeftViewController

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
    
    NSLog(@"sending messages between controllers => %@",
          [self.revealController.frontViewController description]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
