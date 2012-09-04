//
//  SDGamePlayState.m
//  Adam
//
//  Created by Jr.White on 12-8-26.
//  Copyright (c) 2012 SundayGame. All rights reserved.
//

#import "SDGamePlayState.h"
#import "SDGameContext.h"
#import "SDPlayData.h"

@implementation SDGamePlayState

- (id) init
{
    if (self = [super init]) {
        SDGameContext *context = [SDGameContext sharedGameContext];
        
        mScene = [[Scene alloc] initWithWidth:context.gameWidth Height:context.gameHeight];
        mUI = [[SDPlayUI alloc] init];
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
    [mScene reset];
    [[SDPlayData sharedSDPlayData] reset];
}

- (void) update:(float)dt
{
    [mScene update:dt];
    [mUI update:dt];
}

@end
