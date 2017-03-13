//
//  TodosWorker.h
//  CleanArchitectureForObjective-C
//
//  Created by Naoki_Sawada on 2017/03/14.
//  Copyright © 2017年 CAFObjC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TodoItem;

@protocol TodosProtocol <NSObject>

- (void)createTodo:(TodoItem *)todoItem;
- (TodoItem *)fetchTodos;

@end

@interface TodosWorker : NSObject

@end
