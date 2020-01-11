//
//  TestingAppDelegate.m
//  TestingSceneDelegateObjCTests
//
//  Created by Geoff Hackworth on 11/01/2020.
//  Copyright © 2020 Hacknicity. All rights reserved.
//

#import "TestingAppDelegate.h"

#import "TestingSceneDelegate.h"
#import "TestingRootViewController.h"

@implementation TestingAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    if (@available(ios 13.0, *)) {
        // Remove any cached scene configurations to ensure that TestingAppDelegate.application(_:configurationForConnecting:options:)
        // is called and TestingSceneDelegate will be used when running unit tests. NOTE: THIS IS PRIVATE API AND MAY BREAK IN THE FUTURE!

        // We can't simply use @selector(_removeSessionFromSessionSet:) as that generates an "Undeclared selector" warning.
        // Therefore we need to create the selector at run time using NSSelectorFromString(). However, the code
        //
        //      [application performSelector:NSSelectorFromString(@"_removeSessionFromSessionSet:") withObject:sceneSession]
        //
        // also generates a warning ("PerformSelector may cause a leak because its selector is unknown")
        //
        // Using a technique from https://stackoverflow.com/a/20058585/870671 we can build a function pointer to the underlying
        // implementation of _removeSessionFromSessionSet: and call it directly
        SEL selector = NSSelectorFromString(@"_removeSessionFromSessionSet:");
        void (*removeSessionFromSessionSet)(UIApplication *, SEL, UISceneSession *) = (void *)[application methodForSelector:selector];

        for (UISceneSession *sceneSession in application.openSessions) {
            removeSessionFromSessionSet(application, selector, sceneSession);
        }
    } else {
        self.window = [[UIWindow alloc] init];
        self.window.rootViewController = [[TestingRootViewController alloc] init];
        [self.window makeKeyAndVisible];
    }

    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options API_AVAILABLE(ios(13.0)) {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    UISceneConfiguration *sceneConfiguration = [[UISceneConfiguration alloc] initWithName:nil sessionRole:connectingSceneSession.role];
    sceneConfiguration.delegateClass = [TestingSceneDelegate class];

    return sceneConfiguration;
}

@end
