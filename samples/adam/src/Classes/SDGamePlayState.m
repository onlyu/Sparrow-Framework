//
//  SDGamePlayState.m
//  Adam
//
//  Created by 清 兰 on 12-8-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SDGamePlayState.h"
#import "SDGameContext.h"

@implementation SDGamePlayState

- (id) init
{
    if (self = [super init]) {
        SDGameContext *context = [SDGameContext sharedGameContext];
        
        mScene = [[Scene alloc] initWithWidth:context.gameWidth Height:context.gameHeight];
        mUI = [[UI alloc] initWithScene:mScene];
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
    context.ui = mUI;
    context.scene = mScene;
}

- (void) update:(float)dt
{
    [mScene update:dt];
}

@end
