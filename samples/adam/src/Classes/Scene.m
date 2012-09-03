//
//  Scene.m
//  Adam
//
//  Created by 清 兰 on 12-8-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Scene.h"
#import "Background.h"
#import "UmbrellaManager.h"

@implementation Scene

@synthesize hero = mHero;

- (void)dealloc
{
    [mHero release];
    [super dealloc];
}

- (Scene *)initWithWidth:(int)width Height:(int)height
{
    if ((self = [super init])) {
        mWindowWidth = width;
        mWindowHeight = height;

        Background *background = [[Background alloc] init];
        [self addChild:background];
        background.scaleX = mWindowWidth/background.height;
        background.scaleY = mWindowWidth/background.height;
        [background release];
        
        UmbrellaManager *umbrellaManager = [UmbrellaManager instance];
        [self addChild:umbrellaManager];
        
        
        mHero = [Hero hero];
        mHero.x = 200;
        mHero.y = 200;
        [self addChild:mHero];
        
    }
    return self;
}

- (void) update:(float)dt
{
    [mHero update:dt];
    self.x = -(mHero.x - 200);
}

@end
