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
#import "FirstPresenter.h"

@interface FirstInteractor (Extension) <FirstViewControllerOutput>
@end
@interface FirstPresenter (Extension) <FirstInteractorOutput>
@end
@interface FirstViewController (Extension) <FirstPresenterOutput>
@end

@interface FirstConfigurator ()
@end

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
    
    FirstPresenter *presenter = [FirstPresenter new];
    presenter.output = viewController;
    

    FirstInteractor *interactor = [FirstInteractor new];
    interactor.output = presenter;
    
    viewController.output = interactor;    
    viewController.router = router;
}

@end

