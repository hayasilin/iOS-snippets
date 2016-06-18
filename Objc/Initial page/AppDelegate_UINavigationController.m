//
//  AppDelegate.m
//
//  Created by Kuan-Wei Lin on 3/5/16.
//  Copyright © 2016 Kuan-Wei Lin. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UINavigationController *navi = [[UINavigationController alloc] init];
    [self.window addSubview:[navi view]];
    
    ViewController *viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    [navi pushViewController:viewController animated:YES];
    
    self.window.rootViewController = navi;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
