//
//  FirstConfigurator.m
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/15.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import "FirstConfigurator.h"
#import "FirstViewController.h"
#import "FirstRouter.h"
#import "FirstInteractor.h"

@implementation FirstConfigurator

+ (instancetype)sharedInstance {
    static FirstConfigurator *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [FirstConfigurator new];
    });
    return sharedInstance;
}

- (void)configureViewController:(FirstViewController *)viewController {
    
    FirstRouter *router = [FirstRouter new];
    router.viewController = viewController;
    
    // TODO: configurePresenter

    FirstInteractor *interactor = [FirstInteractor new];
    viewController.output = interactor;    
    viewController.router = router;
    
    
}



@end
