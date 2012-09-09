//
//  SDPauseState.m
//  Adam
//
//  Created by JR.White on 12-9-10.
//  Copyright (c) 2012 SundayGame. All rights reserved.
//

#import "SDPauseState.h"
#import "Sunday.h"
#import "SDGameContext.h"

@interface SDPauseState()
- (void) onRestartClicked:(SDEvent *)event;
- (void) onReturnToMenuClicked:(SDEvent *)event;
- (void) onResume:(SDEvent *) event;
@end

@implementation SDPauseState

- (id) init
{
    if (self = [super init]) {
        mUI = [[SPSprite alloc] init];
        
        NSString *text1 = [NSString stringWithFormat:@"Paused"];
        SPTextField *textField = [SPTextField textFieldWithText:text1];
        textField.x = 100;
        textField.y = 20;
        textField.fontSize = 24;
        [mUI addChild:textField];
        
        
        SPTextField *resumeButton = [SPTextField textFieldWithText:@"Resume"];
        resumeButton.x = 200;
        resumeButton.y = 120;
        [mUI addChild:resumeButton];
        
        [resumeButton addEventListener:@selector(onResume:) atObject:self forType:SD_EVENT_TOUCH];
        
        
        SPTextField *restartButton = [SPTextField textFieldWithText:@"Play Again"];
        restartButton.x = 200;
        restartButton.y = 160;
        [mUI addChild:restartButton];
        
        [restartButton addEventListener:@selector(onRestartClicked:) atObject:self forType:SD_EVENT_TOUCH];
        
        SPTextField *exitButton = [SPTextField textFieldWithText:@"Exit"];
        exitButton.x = 200;
        exitButton.y = 200;
        [mUI addChild:exitButton];
        
        [exitButton addEventListener:@selector(onReturnToMenuClicked:) atObject:self forType:SD_EVENT_TOUCH];
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

- (void) onResume:(SDEvent *)event
{
    SDGameContext *context = [SDGameContext sharedGameContext];
    [context toState:@"GamePlay" withMessage:@"resume"];
}
@end
