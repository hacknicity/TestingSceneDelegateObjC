//
//  TestingAppDelegate.m
//  TestingSceneDelegateObjCTests
//
//  Created by Geoff Hackworth on 11/01/2020.
//  Copyright © 2020 Hacknicity. All rights reserved.
//

#import "TestingAppDelegate.h"

#import "TestingSceneDelegate.h"

@implementation TestingAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    UISceneConfiguration *sceneConfiguration = [[UISceneConfiguration alloc] initWithName:nil sessionRole:connectingSceneSession.role];
    sceneConfiguration.delegateClass = [TestingSceneDelegate class];

    return sceneConfiguration;
}

@end
