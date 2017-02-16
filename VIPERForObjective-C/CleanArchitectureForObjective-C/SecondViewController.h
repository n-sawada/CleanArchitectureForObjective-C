//
//  SecondViewController.h
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/15.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
+ (instancetype)selfViewController;
@end

@interface SecondViewController (Storyboard)
+ (instancetype)selfViewControllerWithStoryboardName:(NSString *)storyboardName;
@end
