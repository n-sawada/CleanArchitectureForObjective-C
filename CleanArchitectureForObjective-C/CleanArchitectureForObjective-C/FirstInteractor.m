//
//  FirstInteractor.m
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/16.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import "FirstInteractor.h"
#import "FirstWorker.h"
#import "FirstModels.h"

@interface FirstInteractor ()

@end

@implementation FirstInteractor

- (void)doSomething:(FirstRequest *)request {
    
    // Do some works using request

    self.worker = [FirstWorker new];
    [self.worker doSomeWork];
    
    
    FirstResponse *response = [FirstResponse new];
    [self.output presentSomething:response];
}



@end
