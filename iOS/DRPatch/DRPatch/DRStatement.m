//
//  DRStatement.m
//  DRPatch
//
//  Created by yyy on 2020/1/31.
//  Copyright © 2020 yyy. All rights reserved.
//

#import "DRStatement.h"
@interface DRStatement()

@property (nonatomic, strong)NSMutableArray<NSString *> * array;

@property (nonatomic, strong)NSString * firstSymbol;

@end

@implementation DRStatement

- (NSString *)getFirstSymbol {
    return self.firstSymbol;
}

- (NSString *)next {
    NSString * n = self.array.firstObject;
    [self.array removeObjectAtIndex:0];
    return n;
}

@end
