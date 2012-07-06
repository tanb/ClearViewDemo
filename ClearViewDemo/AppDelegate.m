//
//  AppDelegate.m
//  ClearViewDemo
//
//  Created by Tomonori Tanabe on 7/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "ClearView.h"


@interface AppDelegate()

- (void)infoButtonAction:(id)sender;

@end


@implementation AppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    CGRect appFrame = [UIScreen mainScreen].applicationFrame;
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:appFrame];
    CGSize contentSize = appFrame.size;
    contentSize.height += 100;
    scrollView.contentSize = contentSize;
    [self.window addSubview:scrollView];
    
    ClearView *clearView = [[ClearView alloc] initWithFrame:appFrame];
    
    [self.window addSubview:clearView];
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [infoButton addTarget:self 
                 action:@selector(infoButtonAction:)
       forControlEvents:UIControlEventTouchUpInside];
    infoButton.frame = CGRectMake(0, 0, 50, 50);
    infoButton.center = self.window.center;
    [clearView addSubview:infoButton];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)infoButtonAction:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@""
                                                    message:@"Clicked."
                                                   delegate:self
                                          cancelButtonTitle:@"OK" 
                                          otherButtonTitles:nil];
    [alert show];
}

@end
