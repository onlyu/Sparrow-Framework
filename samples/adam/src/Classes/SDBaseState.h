//
//  SDBaseState.h
//  Adam
//
//  Created by Lan Qing on 12-8-26.
//  Copyright (c) 2012 SundayGame. All rights reserved.
//
//  Permission is given to use this source code file without charge in any
//  project, commercial or otherwise, entirely at your risk, with the condition
//  that any redistribution (in part or whole) of source code must retain
//  this copyright and permission notice. Attribution in compiled projects is
//  appreciated but not required.
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

- (void) enter:(NSString *)message fromState:(NSString *)stateName;
- (void) leave;
- (void) update:(float)dt;
- (void) suspended:(float)dt;
- (void) suspend;
- (void) resume:(NSString *)message fromState:(NSString *)stateName;

@end
