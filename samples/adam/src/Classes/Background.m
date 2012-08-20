//
//  Background.m
//  Adam
//
//  Created by 清 兰 on 12-8-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Background.h"

@implementation Background

- (id) init
{
    if ((self = [super init])) {
        self.width = 0;
        self.height = 0;
        
        SPImage *background = [[SPImage alloc] initWithContentsOfFile:@"background1.png"];
        background.x = 0;
        [self addChild:background];
        [background release];
        
        self.height = background.height;
        self.width += background.width;
        
        background = [[SPImage alloc] initWithContentsOfFile:@"background3.png"];
        background.x = 2000;
        [self addChild:background];
        [background release];        
        self.width += background.width;
        
        background = [[SPImage alloc] initWithContentsOfFile:@"background1.png"];
        background.x = 4000;
        [self addChild:background];
        [background release];        
        self.width += background.width;
        
        background = [[SPImage alloc] initWithContentsOfFile:@"background3.png"];
        background.x = 6000;
        [self addChild:background];
        [background release];        
        self.width += background.width;
        
        background = [[SPImage alloc] initWithContentsOfFile:@"background1.png"];
        background.x = 8000;
        [self addChild:background];
        [background release];        
        self.width += background.width;
        
        background = [[SPImage alloc] initWithContentsOfFile:@"background1.png"];
        background.x = 10000;
        [self addChild:background];
        [background release];        
        self.width += background.width;
    }
    return self;
}

- (void) dealloc
{
    [super dealloc];
}
@end
