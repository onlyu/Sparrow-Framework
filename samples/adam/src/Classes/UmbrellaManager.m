//
//  UmbrellaManager.m
//  Adam
//
//  Created by 清 兰 on 12-8-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UmbrellaManager.h"
#import "Umbrella.h"

// private method
@interface UmbrellaManager ()
- (void) initBaseStage;
- (void) initLevel;
@end

// implement
@implementation UmbrellaManager

static UmbrellaManager *sInstance = nil;

+ (UmbrellaManager *)instance
{
    if (!sInstance) {
        sInstance = [[UmbrellaManager alloc] init];
    }
    return sInstance;
}

- (id)init
{
    if ((self = [super init])) {
        mUmbrellas = [[NSMutableArray alloc] init];
        [self initBaseStage];
        [self initLevel];
    }
    return self;
}

- (void) initBaseStage
{
    Umbrella *umbrella = [[Umbrella alloc] initWithType:@"blue"];
    umbrella.x = 200 - 20;
    umbrella.y = 180;
    [self addChild:umbrella];
    [umbrella release];
    [mUmbrellas addObject:umbrella];
    
    umbrella = [[Umbrella alloc] initWithType:@"blue"];
    umbrella.x = 200;
    umbrella.y = 180;
    [self addChild:umbrella];
    [umbrella release];
    [mUmbrellas addObject:umbrella];
    
    umbrella = [[Umbrella alloc] initWithType:@"blue"];
    umbrella.x = 200 + 20;
    umbrella.y = 180;
    [self addChild:umbrella];
    [umbrella release];
    [mUmbrellas addObject:umbrella];    
}

- (void) initLevel
{
    int count = 100;
    for (int i=0; i<count; ++i) {
        Umbrella *umbrella = [[Umbrella alloc] initWithType:@"blue"];
        umbrella.x = 200 + i * 100;
        umbrella.y = 180 + random()%100 - 50;
        [self addChild:umbrella];
        [umbrella release];
        [mUmbrellas addObject:umbrella];
    }
}

- (void) dealloc
{
    //to-do:release umbrella
    [super dealloc];
}

@end
