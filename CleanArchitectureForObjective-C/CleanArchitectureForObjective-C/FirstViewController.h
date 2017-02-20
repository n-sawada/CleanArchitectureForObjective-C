//
//  FirstViewController.h
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/15.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FirstRouter;
@class FirstRequest;
@class FirstViewModel;

@protocol FirstViewControllerOutput <NSObject>
@required
- (void)doSomething:(FirstRequest *)request;
@end


@protocol FirstViewControllerInput <NSObject>
@required
- (void)displaySomething:(FirstViewModel *)viewModel;
@end



@interface FirstViewController : UIViewController <FirstViewControllerInput>

+ (instancetype)selfViewController;

@property (nonatomic) FirstRouter *router;
@property (nonatomic) id<FirstViewControllerOutput> output;



@end

@interface FirstViewController (Storyboard)
+ (instancetype)selfViewControllerWithStoryboardName:(NSString *)storyboardName;
@end
