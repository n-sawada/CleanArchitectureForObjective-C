//
//  TodosDataStore.m
//  CleanArchitectureForObjective-C
//
//  Created by Naoki_Sawada on 2017/03/14.
//  Copyright © 2017年 CAFObjC. All rights reserved.
//

#import "TodosDataStore.h"
#import <Realm/Realm.h>
#import "TodoItem.h"

@implementation TodosDataStore

- (void)createTodo:(TodoItem *)todoItem {
    
    // デフォルトRealmを取得する
    RLMRealm *realm = [RLMRealm defaultRealm];
    // Realmの取得はスレッドごとに１度だけ必要になります
    
    // トランザクションを開始して、オブジェクトをRealmに追加する
    [realm beginWriteTransaction];
    [realm addObject:todoItem];
    [realm commitWriteTransaction];
}

- (NSArray<TodoItem *> *)fetchTodos {

    RLMResults<TodoItem *> *todoItems = [TodoItem allObjects];
    
    NSMutableArray *arr = [NSMutableArray new];
    for (TodoItem *item in todoItems) {
        [arr addObject:item];
    }
    
    return arr;
}


@end
