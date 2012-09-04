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
- (void) startGame:(SDEvent *)event;
@end

@implementation SDMenuState

- (void) startGame:(SDEvent *)event
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
        
        SPImage *background = [[SPImage alloc] initWithContentsOfFile:@"background.png"];
        [mScene addChild:background];
        background.scaleX = context.gameWidth/background.width;
        background.scaleY = context.gameHeight/background.height;
        [background release];
        
        SPTexture *texture = [SPTexture textureWithContentsOfFile:@"start.png"];
        SPButton *startGameButton = [SPButton buttonWithUpState:texture];
        startGameButton.x = 180;
        startGameButton.y = 70;
        startGameButton.scaleX = 0.5;
        startGameButton.scaleY = 0.5;
        [mUI addChild:startGameButton];
        
        SPImage *leftCloud = [SPImage imageWithContentsOfFile:@"cloud.png"];
        leftCloud.x = 0;
        leftCloud.y = 0;
        leftCloud.scaleX = 0.5;
        leftCloud.scaleY = 0.5;
        [mUI addChild:leftCloud];
        
        SPTexture *soundTexture = [SPTexture textureWithContentsOfFile:@"sound_botton.png"];
        SPButton *soundToggle = [SPButton buttonWithUpState:soundTexture];
        soundToggle.x = 20;
        soundToggle.y = 10;
        soundToggle.scaleX = 0.5;
        soundToggle.scaleY = 0.5;
        [mUI addChild:soundToggle];
        
        SPTexture *settingTexture = [SPTexture textureWithContentsOfFile:@"setting_botton.png"];
        SPButton *settingButton = [SPButton buttonWithUpState:settingTexture];
        settingButton.x = 60;
        settingButton.y = 10;
        settingButton.scaleX = 0.5;
        settingButton.scaleY = 0.5;
        [mUI addChild:settingButton];
        
        SPTexture *gameCenterTexture = [SPTexture textureWithContentsOfFile:@"game_center.png"];
        SPButton *gameCenter = [SPButton buttonWithUpState:gameCenterTexture];
        gameCenter.x = 400;
        gameCenter.y = 0;
        gameCenter.scaleX = 0.5;
        gameCenter.scaleY = 0.5;
        [mUI addChild:gameCenter];
        
        SPTexture *storeTexture = [SPTexture textureWithContentsOfFile:@"store.png"];        
        SPButton *storeButton = [SPButton buttonWithUpState:storeTexture];
        storeButton.x = 400;
        storeButton.y = 200;
        storeButton.scaleX = 0.5;
        storeButton.scaleY = 0.5;
        [mUI addChild:storeButton];
        
        SPImage *scoreBoard = [SPImage imageWithContentsOfFile:@"score.png"];
        scoreBoard.x = 20;
        scoreBoard.y = 70;
        scoreBoard.scaleX = 0.5;
        scoreBoard.scaleY = 0.5;
        [mUI addChild:scoreBoard];
        
        SPImage *character = [SPImage imageWithContentsOfFile:@"charactor.png"];
        character.x = 20;
        character.y = 170;
        character.scaleX = 0.5;
        character.scaleY = 0.5;
        [mUI addChild:character];
        
        SPImage *logo = [SPImage imageWithContentsOfFile:@"logo.png"];
        logo.x = 180;
        logo.y = 30;
        logo.scaleX = 0.5;
        logo.scaleY = 0.5;
        [mUI addChild:logo];
        
        
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
