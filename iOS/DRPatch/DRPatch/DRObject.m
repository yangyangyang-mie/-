//
//  DRObject.m
//  DRPatch
//
//  Created by yyy on 2020/1/31.
//  Copyright © 2020 yyy. All rights reserved.
//

#import "DRObject.h"
#import "DRMethod.h"
#import "YYModel.h"
@implementation DRObject

#if DEBUG
- (NSString *)description {
    return [NSString stringWithFormat:@"\n%@",self.yy_modelDescription];
}
#endif
@end
