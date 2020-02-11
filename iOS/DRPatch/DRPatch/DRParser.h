//
//  DRParser.h
//  DRPatch
//
//  Created by yyy on 2020/1/31.
//  Copyright © 2020 yyy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DRParser : NSObject

+ (void)readFromFile:(NSURL *)url;
@end

NS_ASSUME_NONNULL_END
