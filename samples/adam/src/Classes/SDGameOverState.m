//
//  SDGameOverState.m
//  Adam
//
//  Created by JR.White on 12-8-26.
//  Copyright (c) 2012 SundayGame. All rights reserved.
//

#import "SDGameOverState.h"
#import "Sunday.h"
#import "SDGameContext.h"

@interface SDGameOverState()
- (void) onRestartClicked:(SDEvent *)event;
- (void) onReturnToMenuClicked:(SDEvent *)event;
@end

@implementation SDGameOverState

- (id) init
{
    if (self = [super init]) {
        mUI = [[SPSprite alloc] init];
        
        NSString *text1 = [NSString stringWithFormat:@"Game Over"];
        SPTextField *textField = [SPTextField textFieldWithText:text1];
        textField.x = 100;
        textField.y = 20;
        textField.fontSize = 30;
        textField.width = 300;
        textField.height = 200;
        [mUI addChild:textField];
        
        SPTexture *texture = [SPTexture textureWithContentsOfFile:@"button.png"];
        SPButton *restart = [SPButton buttonWithUpState:texture];
        restart.x = 200;
        restart.y = 160;
        restart.text = @"Play Again";
        [mUI addChild:restart];
        
        [restart addEventListener:@selector(onRestartClicked:) atObject:self forType:SD_EVENT_CLICKED];
        
        SPButton *returnToMenu = [SPButton buttonWithUpState:texture];
        returnToMenu.x = 200;
        returnToMenu.y = 200;
        returnToMenu.text = @"Menu";
        [mUI addChild:returnToMenu];
        
        [returnToMenu addEventListener:@selector(onReturnToMenuClicked:) atObject:self forType:SD_EVENT_CLICKED];
    }
    return self;
}

- (void) dealloc
{
    [mUI release];
    [super dealloc];
}

- (void) enter:(NSString *)message fromState:(NSString *)stateName
{
    SDGameContext *context = [SDGameContext sharedGameContext];
    context.ui = mUI;
}

- (void) update:(float)dt
{
    
}

- (void) onRestartClicked:(SDEvent *)event
{
    SDGameContext *context = [SDGameContext sharedGameContext];
    [context toState:@"GamePlay"];
}

- (void) onReturnToMenuClicked:(SDEvent *)event
{
    SDGameContext *context = [SDGameContext sharedGameContext];
    [context toState:@"Menu"];
}
@end
