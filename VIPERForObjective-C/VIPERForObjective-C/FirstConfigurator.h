//
//  FirstConfigurator.h
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/15.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FirstViewController;

@interface FirstConfigurator : NSObject

+ (instancetype)sharedInstance;
- (void)configureViewController:(FirstViewController *)viewController;

@end
