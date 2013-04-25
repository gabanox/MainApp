//
//  AppDelegate.h
//  DrawingToAWindow
//
//  Created by Gabriel Ramirez on 4/13/13.
//  Copyright (c) 2013 badge.me. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class PKRevealController;
@class LeftViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) UINavigationController *navigationController;

@property (strong, nonatomic) PKRevealController *compositeViewController;

@property (strong, nonatomic) LeftViewController *leftViewController;

@end
