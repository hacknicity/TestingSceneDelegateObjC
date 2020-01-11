//
//  TestingRootViewController.m
//  TestingSceneDelegateObjCTests
//
//  Created by Geoff Hackworth on 11/01/2020.
//  Copyright © 2020 Hacknicity. All rights reserved.
//

#import "TestingRootViewController.h"

@implementation TestingRootViewController

- (void)loadView {
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Running Unit Tests...";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];

    self.view = label;
}

@end
