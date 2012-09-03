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
        startGameButton.x = 180;
        startGameButton.y = 100;
        startGameButton.scaleX = 0.35;
        startGameButton.scaleY = 0.35;
        //startGameButton.textBounds = [SPRectangle rectangleWithX:10 y:10 width:80 height:40];
        startGameButton.text = @"New Game";
        [mUI addChild:startGameButton];
        

        SPButton *soundToggle = [SPButton buttonWithUpState:texture];
        soundToggle.x = 0;
        soundToggle.y = 0;
        soundToggle.scaleX = 0.2;
        soundToggle.scaleY = 0.2;
        [mUI addChild:soundToggle];
        
        SPButton *gameCenter = [SPButton buttonWithUpState:texture];
        gameCenter.x = 400;
        gameCenter.y = 0;
        gameCenter.scaleX = 0.5;
        gameCenter.scaleY = 0.5;
        gameCenter.text = @"Game Center";
        [mUI addChild:gameCenter];
        
        SPButton *storeButton = [SPButton buttonWithUpState:texture];
        storeButton.x = 400;
        storeButton.y = 200;
        storeButton.scaleX = 0.3;
        storeButton.scaleY = 0.3;
        storeButton.text = @"Store";
        [mUI addChild:storeButton];
        
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
