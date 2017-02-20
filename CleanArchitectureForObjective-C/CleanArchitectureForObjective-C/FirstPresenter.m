//
//  FirstPresenter.m
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/16.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import "FirstPresenter.h"
#import "FirstModels.h"

@interface FirstPresenter ()

@end
@implementation FirstPresenter

- (void)presentSomething:(FirstResponse *)respnse {
    
    // TODO: get Response to viewModel

    FirstViewModel *viewModel = [FirstViewModel new];
    [self.output displaySomething:viewModel];

}

@end
