//
//  FirstRouter.h
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/15.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

@import Foundation;
@import UIKit;
@class FirstViewController;

@protocol FirstRouterInput <NSObject>

@required
- (void)navigateToSomeWhere;

@end

@interface FirstRouter : NSObject

@property (nonatomic, weak) FirstViewController *viewController;

- (void)navigateToSomeWhere;
- (void)passDataToNextScene:(UIStoryboardSegue *)segue;

@end







