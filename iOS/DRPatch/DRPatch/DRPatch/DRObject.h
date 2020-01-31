//
//  DRObject.h
//  DRPatch
//
//  Created by yyy on 2020/1/31.
//  Copyright © 2020 yyy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DRMethod;
@interface DRObject : NSObject

@property (nonatomic, strong) NSString * className;

@property (nonatomic, strong) NSArray<DRMethod *> * methodsArray;

@end

NS_ASSUME_NONNULL_END
