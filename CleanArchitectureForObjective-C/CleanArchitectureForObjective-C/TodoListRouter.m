//
//  TodoListRouter.m
//  CleanArchitectureForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/21.
//  Copyright (c) 2017年 CAFObjC. All rights reserved.
//
//  This file was generated by the Clean ObjectiveC Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, base on http://clean-swift.com

#import "TodoListRouter.h"
#import "TodoListViewController.h"

@interface TodoListRouter ()
@end

@implementation TodoListRouter

- (void)navigateToSomeWhere {
}

- (void)passDataToNextScene:(UIStoryboardSegue *)segue {
    // transition using segue
//    if ([segue.identifier isEqualToString:@"SampleScene"]) {
//        [self passDataToSomeWhereScene:segue];
//    }
}

- (void)passDataToSomeWhereScene:(UIStoryboardSegue *)segue {
//    NSLog(@"Function: %s, Line: %d", __PRETTY_FUNCTION__, __LINE__ );
}

- (void)transitionToNextScene {
    // programmatically create instance base on storyboard
    // SampleViewController *sample = [SampleViewController selfViewController];
    // ...
}


@end
