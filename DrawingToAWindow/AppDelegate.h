//
//  AppDelegate.h
//  DrawingToAWindow
//
//  Created by Gabriel Ramirez on 4/13/13.
//  Copyright (c) 2013 badge.me. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) UINavigationController *navigationController;

@end
