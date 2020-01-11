//
//  TestingSceneDelegate.m
//  TestingSceneDelegateObjCTests
//
//  Created by Geoff Hackworth on 11/01/2020.
//  Copyright © 2020 Hacknicity. All rights reserved.
//

#import "TestingSceneDelegate.h"

#import "TestingRootViewController.h"

@implementation TestingSceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    NSParameterAssert([scene isKindOfClass:[UIWindowScene class]]);
    UIWindowScene *windowScene = (UIWindowScene *)scene;

    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    self.window.rootViewController = [[TestingRootViewController alloc] init];
    [self.window makeKeyAndVisible];
}

@end
