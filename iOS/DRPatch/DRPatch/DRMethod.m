//
//  DRMethod.m
//  DRPatch
//
//  Created by yyy on 2020/1/31.
//  Copyright © 2020 yyy. All rights reserved.
//

#import "DRMethod.h"
#import "DRStatement.h"
#import "YYModel.h"
@implementation DRMethod

-(void)setStatements:(NSArray<DRStatement *> *)statements {
    NSMutableArray<DRStatement *> * _statements0 = [NSMutableArray arrayWithCapacity:statements.count];
    
    [statements enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[NSString class]]) {
            DRStatement * st = DRStatement.new;
            st.statement = obj;
            obj = st;
        }
        if ([obj isKindOfClass:[NSDictionary class]]) {
            DRStatement * st = [DRStatement yy_modelWithJSON:obj];
            obj = st;
        }
        _statements0[idx] = obj;
    }];
    _statements = _statements0.copy;
}

- (id)eve {
    if (self.params) {
        [self.symbolTable addEntriesFromDictionary:self.params];
    }
    
    for (DRStatement * st in self.statements) {
        [self eveStatement:st];
    }
    
    return nil;
}

- (id)eveStatement:(DRStatement *)st {
    NSAssert(st != nil, @"???");
    if (st.statement) {
        if (self.symbolTable[[st statement]]) {
            return self.symbolTable[[st statement]];
        }
        else {
            return [st statement];
        }
    }
    id left = [self eveStatement:st.left];
    id right = [self eveStatement:st.right];
    SEL sel = NSSelectorFromString(right);
    [left performSelector:sel];
    return nil;
}

- (NSMutableDictionary<NSString *,id> *)symbolTable {
    if (!_symbolTable) {
        _symbolTable = [NSMutableDictionary dictionary];
    }
    return _symbolTable;
}

@end
