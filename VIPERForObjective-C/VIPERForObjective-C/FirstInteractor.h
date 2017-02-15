//
//  FirstInteractor.h
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/16.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FirstInteractorOutput <NSObject>
@required
- (void)presentSomething;
@end

@protocol FirstInteractorInput <NSObject>
@required
- (void)doSomething;
@end

@interface FirstInteractor : NSObject <FirstInteractorInput>

@property (nonatomic) id<FirstInteractorOutput> output;
// TODO: Worker property

@end
