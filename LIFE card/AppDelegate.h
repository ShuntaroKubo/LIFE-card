//
//  AppDelegate.h
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/02.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MFSideMenu.h"
#import "rightSideMenuViewController.h"
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) rightSideMenuViewController *RightMenuViewContoroller;

@property (nonatomic) ViewController *tmpViewContoroller;

@end
