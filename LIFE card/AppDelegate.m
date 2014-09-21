//
//  AppDelegate.m
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/02.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import "AppDelegate.h"
#import "rightSideMenuViewController.h"
#import "ViewController.h"
#import "MFSideMenuContainerViewController.h"


@implementation AppDelegate

- (ViewController *)demoController
{
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    return [mainStoryBoard instantiateViewControllerWithIdentifier:@"ViewController"];
    
}

- (UINavigationController *)navigationController
{
    return [[UINavigationController alloc]
            initWithRootViewController:[self demoController]];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    MFSideMenuContainerViewController *container = (MFSideMenuContainerViewController *)self.window.rootViewController;

    //    UINavigationController *navigationController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"navigationController"];

    //
    UITabBarController *tabBarContoroller =  [mainStoryBoard instantiateViewControllerWithIdentifier:@"TabBarController"];

    UIViewController *rightSideMenuViewController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"rightSideMenuViewController"];
    
    [container setRightMenuViewController:rightSideMenuViewController];
    
    [container setCenterViewController:tabBarContoroller];

//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
//    MFSideMenuContainerViewController *container = (MFSideMenuContainerViewController *)self.window.rootViewController;
//    UITabBarController *TabBarController = [storyboard instantiateViewControllerWithIdentifier:@"TabBarController"];
//    //    UIViewController *leftSideMenuViewController = [storyboard instantiateViewControllerWithIdentifier:@"leftSideMenuViewController"];
//    UIViewController *rightSideMenuViewController = [storyboard instantiateViewControllerWithIdentifier:@"rightSideMenuViewController"];
//    
//    //    [container setLeftMenuViewController:leftSideMenuViewController];
//    [container setRightMenuViewController:rightSideMenuViewController];
//    [container setCenterViewController:TabBarController];


    
    
    //[[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"cccc.png"]];
    
    //ナビゲーションバー色設定
    //[UINavigationBar appearance].barTintColor = [UIColor colorWithRed:0.700 green:0.200 blue:0.200 alpha:0.900];
    
    // Override point for customization after application launch.
    
     return YES;
     
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
