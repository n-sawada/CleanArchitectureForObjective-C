//
//  FirstModels.h
//  CleanArchitectureForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/17.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FirstModels : NSObject

@end


@interface FirstRequest : NSObject
@property (nonatomic) NSString *testStr;
@end
@interface FirstResponse : NSObject
@property (nonatomic) NSString *testStr;
@end
@interface FirstViewModel : NSObject
@property (nonatomic) NSString *testStr;
@end

