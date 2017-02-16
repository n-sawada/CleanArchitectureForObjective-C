//
//  FirstInteractor.h
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/16.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FirstWorker;
@class FirstRequest;

@protocol FirstInteractorOutput <NSObject>
@required
- (void)presentSomething;
@end

@protocol FirstInteractorInput <NSObject>
@required
- (void)doSomething:(FirstRequest *)request;
@end

@interface FirstInteractor : NSObject <FirstInteractorInput>
@property (nonatomic) id<FirstInteractorOutput> output;
@property (nonatomic) FirstWorker *worker;
@end
