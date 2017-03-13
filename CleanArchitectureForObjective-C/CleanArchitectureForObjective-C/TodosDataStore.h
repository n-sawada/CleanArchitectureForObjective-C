//
//  TodosDataStore.h
//  CleanArchitectureForObjective-C
//
//  Created by Naoki_Sawada on 2017/03/14.
//  Copyright © 2017年 CAFObjC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TodosWorker.h"

@class TodoItem;

@interface TodosDataStore : NSObject <TodosProtocol>

- (void)createTodo:(TodoItem *)todoItem;
- (NSArray<TodoItem *> *)fetchTodos;
@end
