//
//  DRStatement.h
//  DRPatch
//
//  Created by yyy on 2020/1/31.
//  Copyright © 2020 yyy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DRStatement : NSObject

@property (nonatomic, strong) NSString * statement;

@property (nonatomic, strong) DRStatement * left;

@property (nonatomic, strong) DRStatement * right;

@end

NS_ASSUME_NONNULL_END
