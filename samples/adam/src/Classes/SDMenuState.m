//
//  SDMenuState.m
//  Adam
//
//  Created by 清 兰 on 12-8-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SDMenuState.h"
#import "SDGameContext.h"

@implementation SDMenuState

- (id) init
{
    if (self = [super init]) {
        mUI = [[SPSprite alloc] init];
        mScene = [[SPSprite alloc] init];
    }
    return self;
}

- (void) dealloc
{
    [mUI release];
    [mScene release];
    [super dealloc];
}

- (void) enter:(NSString *)message fromState:(NSString *)stateName
{
    SDGameContext *context = [SDGameContext sharedGameContext];
    [context setUI:mUI];
    [context setScene:mScene];
}

@end
