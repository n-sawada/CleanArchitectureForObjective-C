//
//  TodoListWorker.h
//  CleanArchitectureForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/21.
//  Copyright (c) 2017年 CAFObjC. All rights reserved.
//
//  This file was generated by the Clean ObjectiveC Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, base on http://clean-swift.com

@import Foundation;
#import "TodoItem.h"

typedef void(^FetchCompletionBlock)(TodoItem *todo);

@interface TodoListWorker : NSObject
- (void)fetchTodoItems:(FetchCompletionBlock)fetchCompletionBlock;
@end