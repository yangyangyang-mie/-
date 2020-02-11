//
//  DRMethod.h
//  DRPatch
//
//  Created by yyy on 2020/1/31.
//  Copyright © 2020 yyy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DRStatement;
@interface DRMethod : NSObject

@property (nonatomic, assign) BOOL isClassMethod;

@property (nonatomic, strong) NSString * methodName;

@property (nonatomic, strong) NSDictionary<NSString *,id> * params;

@property (nonatomic, strong) NSMutableDictionary<NSString *, id> * symbolTable;

@property (nonatomic, strong) NSArray<DRStatement *> * statements;

- (id)eve;
@end

NS_ASSUME_NONNULL_END
