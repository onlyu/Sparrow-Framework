//
//  Hero.m
//  Adam
//
//  Created by Jr.White on 12-8-13.
//  Copyright (c) 2012 SundayGame. All rights reserved.
//

#import "SDHero.h"
#import "UmbrellaManager.h"
#import "SDGameContext.h"
#import "SDPlayData.h"

@implementation SDHero

- (id)init
{
    if ((self = [super init])) {
        mLeg = [[SPImage alloc] initWithContentsOfFile:@"player_leg1.png"];
        mLeg.x = 21;
        mLeg.y = - 23;
        mLeg.pivotX = 16;
        mLeg.pivotY = 0;
        [self addChild:mLeg];
        
        
        mLeg1 = [[SPImage alloc] initWithContentsOfFile:@"player_leg2.png"];
        mLeg1.x = 13;
        mLeg1.y = - 20;
        mLeg1.pivotX = 6;
        mLeg1.pivotY = 10;
        mLeg1.visible = false;
        [self addChild:mLeg1];
        
        mUmbrella = [[SPImage alloc] initWithContentsOfFile:@"player_umbrella1.png"];
        mUmbrella.x = - 10;
        mUmbrella.y = - 36;
        mUmbrella.pivotX = 33;
        mUmbrella.pivotY = 56;
        [self addChild:mUmbrella];
        
        mUmbrella1 = [[SPImage alloc] initWithContentsOfFile:@"player_umbrella2.png"];
        mUmbrella1.x = - 10;
        mUmbrella1.y = - 46;
        mUmbrella1.pivotX = 53;
        mUmbrella1.pivotY = 76;
        mUmbrella1.visible = false;
        [self addChild:mUmbrella1];
        
        mBody = [[SPImage alloc] initWithContentsOfFile:@"player_body.png"];
        mBody.x = 0;
        mBody.y = 0;
        mBody.pivotX = 28;
        mBody.pivotY = 66;
        [self addChild:mBody];
        
        //[[SPStage mainStage].juggler addObject:self];
        
        mSpeedY = 0;
        mAccelerate = 0.5;
        [self down];
    }
    return self;
}

- (void)dealloc
{
    // release any resources here
    
    [mLeg release];
    [mLeg1 release];
    [mUmbrella release];
    [mUmbrella1 release];
    [mBody release];
    
    [super dealloc];
}


+ (SDHero *)hero
{
    return [[SDHero alloc] init];
}

- (void)down
{
    mLeg.visible = false;
    mLeg1.visible = true;
    mUmbrella.visible = false;
    mUmbrella1.visible = true;
}

- (void)up
{
    mLeg.visible = true;
    mLeg1.visible = false;
    mUmbrella.visible = true;
    mUmbrella1.visible = false;
}

- (void)update:(float)seconds
{
    UmbrellaManager *mgr = [UmbrellaManager instance];
    mSpeedY += mAccelerate;
    if ([mgr hitTestPoint:[SPPoint pointWithX:self.x y:self.y] forTouch:NO]) {
    //if (self.y > 180) {
        mSpeedY = -10;
        [self up];
    }
    if (mSpeedY >= 0) {
        [self down];
    }
    self.y += mSpeedY;
    
    
    SDPlayData *playData = [SDPlayData sharedSDPlayData];
    self.x += playData.speed;
    playData.distance = self.x;
    
    if (self.y > 300) {
        [[SDGameContext sharedGameContext] toState:@"GameOver"];
    }
}

- (BOOL)isComplete
{
    return NO;
}
@end
