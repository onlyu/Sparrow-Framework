//
//  SDBaseState.h
//  Adam
//
//  Created by 清 兰 on 12-8-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

/* 
 *the base game state
 */

#import <Foundation/Foundation.h>

@interface SDBaseState : NSObject
{
    @private
    BOOL mIsSuspend;
}

- (void) enter:(NSString *)message fromState:(SDBaseState *)state;
- (void) leave;
- (void) update:(float)dt;
- (void) suspended:(float)dt;
- (void) suspend;
- (void) resume:(NSString *)message fromState:(SDBaseState *)state;

@end
