//
//  AppDelegate.m
//  TestCoreAnimation
//
//  Created by wc on 3/16/15.
//  Copyright (c) 2015 wc. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()<UITabBarControllerDelegate>
@property (nonatomic ,strong)UITabBarController *tabVC;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

//    UIViewController *vc1 = ViewController1.new;
//    UIViewController *vc2 = ViewController2.new;
//    
//    self.tabVC = UITabBarController.new;
//    self.tabVC.viewControllers = @[vc1,vc2];
//    self.tabVC.delegate = self;
//    self.window.rootViewController = self.tabVC;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark tabbarcontroller delegate
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    CATransition *transition = [CATransition animation];
    transition.type = kCATransitionFade;
    transition.duration = 4.0;
    [tabBarController.view.layer addAnimation:transition forKey:nil];
}

@end
