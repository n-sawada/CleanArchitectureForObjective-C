//
//  TodoListConfigurator.m
//  CleanArchitectureForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/21.
//  Copyright (c) 2017年 CAFObjC. All rights reserved.
//
//  This file was generated by the Clean ObjectiveC Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, base on http://clean-swift.com

#import "TodoListConfigurator.h"
#import "TodoListViewController.h"
#import "TodoListRouter.h"
#import "TodoListInteractor.h"
#import "TodoListPresenter.h"

@interface TodoListInteractor (Extension) <TodoListViewControllerOutput>
@end
@interface TodoListPresenter (Extension) <TodoListInteractorOutput>
@end
@interface TodoListViewController (Extension) <TodoListPresenterOutput>
@end

@interface TodoListConfigurator ()
@end

@implementation TodoListConfigurator

+ (instancetype)sharedInstance {
    static TodoListConfigurator *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [TodoListConfigurator new];
    });
    return sharedInstance;
}

- (void)configureViewController:(TodoListViewController *)viewController {
    
    TodoListRouter *router = [TodoListRouter new];
    router.viewController = viewController;
    
    TodoListPresenter *presenter = [TodoListPresenter new];
    presenter.output = viewController;
    

    TodoListInteractor *interactor = [TodoListInteractor new];
    interactor.output = presenter;
    
    viewController.output = interactor;    
    viewController.router = router;
}

@end

