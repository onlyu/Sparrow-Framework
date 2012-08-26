//
//  SDBaseState.m
//  Adam
//
//  Created by 清 兰 on 12-8-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SDBaseState.h"

@implementation SDBaseState

- (void) enter:(NSString *)message fromState:(SDBaseState *)state
{
    NSLog(@"Not specified in the state");
}

- (void) leave
{
    NSLog(@"Not specified in the state");
}

- (void) update:(float)dt
{

}

- (void) suspended:(float)dt
{
    
}

- (void) suspend
{
    
}

- (void) resume:(NSString *)message fromState:(SDBaseState *)state
{
    
}

@end
