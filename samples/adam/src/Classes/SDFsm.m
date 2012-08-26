//
//  SDFsm.m
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
#import "SDFsm.h"
#import "SDStateFactory.h"

@implementation SDFsm

+ (SDFsm *)fsmWithStates:(NSArray *)states
{
    return [[SDFsm alloc] initWithStates:states];
}

- (id) initWithStates:(NSArray *)states
{
    if (self = [super init]) {
        mStates = [[NSMutableArray alloc] init];
        for (NSString *name in states) {
            [mStates addObject:name];
        }
        return self;
    }
    return nil;
}

- (id) init
{
    return nil;
}

- (void) dealloc
{
    [mStates release];
    [super dealloc];
}

- (void) enter:(NSString *)startState messge:(NSString *)message
{
    mCurrentState = [[SDStateFactory sharedSDStateFactory] stateFromName:startState];
    [mCurrentState enter:message fromState:@""];
}

- (void) leave
{

}

- (void) update:(float)dt
{
    
}

- (void) message:(NSString *)message
{
    
}

@end
