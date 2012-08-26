//
//  SDBaseState.m
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

#import "SDBaseState.h"

@implementation SDBaseState


- (id) init
{
    if (self = [super init]){
        
    }
    return self;
}

- (void) dealloc
{
    [super dealloc];
}

- (void) enter:(NSString *)message fromState:(NSString *)stateName
{
    NSLog(@"Not specified in the state");
}

- (void) leave
{
    NSLog(@"Not specified in the state");
}

- (void) update:(float)dt
{
    NSLog(@"Not specified in the state");
}

- (void) suspended:(float)dt
{
    NSLog(@"Not specified in the state");    
}

- (void) suspend
{
    NSLog(@"Not specified in the state");    
}

- (void) resume:(NSString *)message fromState:(NSString *)stateName
{
    NSLog(@"Not specified in the state");
}

@end
