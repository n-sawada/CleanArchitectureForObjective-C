//
//  FirstViewController.h
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/15.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FirstRouter;

@protocol FirstViewControllerOutput <NSObject>

- (void)doSomething;

@end

@interface FirstViewController : UIViewController

+ (instancetype)selfViewController;

@property (nonatomic) FirstRouter *router;
@property (nonatomic) id<FirstViewControllerOutput> output;

@end

@interface FirstViewController (Storyboard)
+ (instancetype)selfViewControllerWithStoryboardName:(NSString *)storyboardName;
@end
