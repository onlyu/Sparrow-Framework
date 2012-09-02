//
//  SDStateFactory.m
//  Adam
//
//  Created by 清 兰 on 12-8-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SDStateFactory.h"

#import "SDBaseState.h"
#import "SDMenuState.h"
#import "SDGamePlayState.h"
#import "SDGameOverState.h"

@implementation SDStateFactory

SD_IMPLEMENT_SINGLETON(SDStateFactory)

- (id) init
{
    if (self = [super init]) {
        mNamedStates = [[NSMutableDictionary dictionary] retain];
        [mNamedStates setObject:[[SDMenuState alloc] init] forKey:@"Menu"];
        [mNamedStates setObject:[[SDGamePlayState alloc] init] forKey:@"GamePlay"];
        [mNamedStates setObject:[[SDGameOverState alloc] init] forKey:@"GameOver"];
        return self;
    }
    return nil;
}

- (void) dealloc
{
    for (SDBaseState *state in mNamedStates) {
        [state release];
    }
    [mNamedStates release];
    [super dealloc];
}

- (SDBaseState *)stateFromName:(NSString *)stateName
{
    NSLog(@"get state %@ from %@", stateName, mNamedStates);
    return [mNamedStates objectForKey:stateName];
}

@end
