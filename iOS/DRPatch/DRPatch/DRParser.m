//
//  DRParser.m
//  DRPatch
//
//  Created by yyy on 2020/1/31.
//  Copyright © 2020 yyy. All rights reserved.
//

#import "DRParser.h"
#import <YYModel/NSObject+YYModel.h>

#import "DRObject.h"
#import "DRMethod.h"
#import "DRStatement.h"

@implementation DRParser
+ (void)readFromFile:(NSURL *)url {
    NSData * data = [NSData dataWithContentsOfURL:url];
    DRObject * object = [DRObject yy_modelWithJSON:data];
//    NSLog(@"%@",object);
    [object.methods[0] eve];
}
@end

@implementation DRObject (YYModel)
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"methods" :[DRMethod class] };
}
@end

@implementation DRStatement (YYModel)
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
        @"left" :[DRStatement class],
        @"right" :[DRStatement class],
    };
}
@end

@implementation NSObject (YYModel)
#if DEBUG
- (NSString *)description {
    return [NSString stringWithFormat:@"\n%@",self.yy_modelDescription];
}
#endif
@end

