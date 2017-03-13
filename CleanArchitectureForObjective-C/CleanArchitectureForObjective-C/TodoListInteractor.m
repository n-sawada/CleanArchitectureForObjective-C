//
//  TodoListInteractor.m
//  CleanArchitectureForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/21.
//  Copyright (c) 2017年 CAFObjC. All rights reserved.
//
//  This file was generated by the Clean ObjectiveC Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, base on http://clean-swift.com

#import "TodoListInteractor.h"
#import "TodoListWorker.h"
#import "TodoListModels.h"
#import "TodoItem.h"

@interface TodoListInteractor ()

@end

@implementation TodoListInteractor

- (void)fetchTodoItems:(TodoListRequest *)request {
    
    self.worker = [TodoListWorker new];
    
    [self.worker fetchTodoItems:^(TodoItem *todo) {
        //
    }];
    
    
    TodoListResponse *response = [TodoListResponse new];
    [self.output presentSomething:response];
}



@end