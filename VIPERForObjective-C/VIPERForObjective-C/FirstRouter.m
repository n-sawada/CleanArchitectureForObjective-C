//
//  FirstRouter.m
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/15.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import "FirstRouter.h"
#import "FirstViewController.h"
#import "SecondViewController.h"


@interface FirstRouter ()
@end

@implementation FirstRouter

- (void)navigateToSomeWhere {
}

- (void)passDataToNextScene:(UIStoryboardSegue *)segue {
    
    if ([segue.identifier isEqualToString:@"ShowSecondScene"]) {
        [self passDataToSomeWhereScene:segue];
    }
}

- (void)passDataToSomeWhereScene:(UIStoryboardSegue *)segue {
    NSLog(@"Function: %s, Line: %d", __PRETTY_FUNCTION__, __LINE__ );
}

- (void)transitionToNextScene {
    SecondViewController *second = [SecondViewController selfViewController];
}




@end
