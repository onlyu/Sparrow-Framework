//
//  SDFsm.h
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

#import <Foundation/Foundation.h>
#import "SDBaseState.h"

@interface SDFsm : NSObject
{
    @private
    SDBaseState *mCurrentState;
    NSMutableArray *mStates;
}

+ (SDFsm *) fsmWithStates:(NSArray *)states;

- (id) initWithStates:(NSArray *)states;

- (void) enter:(NSString *)stateName messge:(NSString *)message;
- (void) leave;
- (void) update:(float)dt;
- (void) message:(NSString *)message;

@end
