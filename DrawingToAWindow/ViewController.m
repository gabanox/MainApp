//
//  ViewController.m
//  DrawingToAWindow
//
//  Created by Gabriel Ramirez on 4/13/13.
//  Copyright (c) 2013 badge.me. All rights reserved.
//

#import "ViewController.h"
#import "AvatarView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *menuButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu-icon.png"] style:UIBarButtonItemStylePlain target:self action:@selector(menuAction)];
    self.navigationItem.leftBarButtonItem = menuButton;
}

- (void) menuAction {
    NSLog(@"menuAction pressed..");
}
@end
