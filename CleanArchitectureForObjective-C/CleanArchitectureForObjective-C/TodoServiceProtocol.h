//
//  TodoServiceProtocol.h
//  CleanArchitectureForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/21.
//  Copyright © 2017年 CAFObjC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Todoitem.h"

@protocol TodoServiceProtocol <NSObject>

- (void)fetchTodos:(^completionHandler)(NSArray<TodoItem *>* todos);

@end
