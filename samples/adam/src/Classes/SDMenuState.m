//
//  SDMenuState.m
//  Adam
//
//  Created by Lan Qing on 12-8-26.
//  Copyright (c) 2012 SundayGame. All rights reserved.
//

#import "SDMenuState.h"
#import "SDGameContext.h"

// --------------------------- private method ---------------------------
@interface SDMenuState()
- (void) startGame:(SPEvent *)event;
@end

@implementation SDMenuState

- (void) startGame:(SPEvent *)event
{
    
    SDGameContext *context = [SDGameContext sharedGameContext];
    [context toState:@"GamePlay"];
}



// ----------------------------------------------------------------------

- (id) init
{
    if (self = [super init]) {
        mUI = [[SPSprite alloc] init];
        mScene = [[SPSprite alloc] init];
        
        SDGameContext *context = [SDGameContext sharedGameContext];
        
        SPImage *background = [[SPImage alloc] initWithContentsOfFile:@"background1.png"];
        [mScene addChild:background];
        background.scaleX = context.gameWidth/background.width;
        background.scaleY = context.gameHeight/background.height;
        [background release];
        
        SPTexture *texture = [SPTexture textureWithContentsOfFile:@"qianjin.png"];
        SPButton *startGameButton = [SPButton buttonWithUpState:texture];
        //startGameButton.width = 100;
        //startGameButton.height = 50;
        startGameButton.x = 100;
        startGameButton.y = 20;
        //startGameButton.textBounds = [SPRectangle rectangleWithX:10 y:10 width:80 height:40];
        startGameButton.text = @"New Game";
        [mUI addChild:startGameButton];
        
        [startGameButton addEventListener:@selector(startGame:) atObject:self forType:SD_EVENT_CLICKED];
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
    
}

@end
