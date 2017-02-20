//
//  FirstPresenter.h
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/16.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FirstViewModel;
@class FirstResponse;

@protocol FirstPresenterOutput <NSObject>
@required
- (void)displaySomething:(FirstViewModel *)viewModel;
@end

@protocol FirstPresenterInput <NSObject>
@required
- (void)presentSomething:(FirstResponse *)response;
@end


@interface FirstPresenter : NSObject <FirstPresenterInput>

@property (nonatomic, weak) id<FirstPresenterOutput> output;
@end
