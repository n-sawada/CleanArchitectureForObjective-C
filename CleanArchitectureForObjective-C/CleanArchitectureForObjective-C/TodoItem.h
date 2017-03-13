//
//  TodoItem.h
//  CleanArchitectureForObjective-C
//
//  Created by Naoki_Sawada on 2017/03/14.
//  Copyright © 2017年 CAFObjC. All rights reserved.
//

#import <Realm/Realm.h>

@interface TodoItem : RLMObject

@property NSString *title;
@property NSString *comment;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<TodoItem *><TodoItem>
RLM_ARRAY_TYPE(TodoItem)
