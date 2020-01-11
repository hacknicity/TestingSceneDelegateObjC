//
//  main.m
//  TestingSceneDelegateObjC
//
//  Created by Geoff Hackworth on 11/01/2020.
//  Copyright © 2020 Hacknicity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        Class appDelegateClass = NSClassFromString(@"TestingAppDelegate") ?: [AppDelegate class];
        appDelegateClassName = NSStringFromClass(appDelegateClass);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
