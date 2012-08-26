//
//  UI.m
//  Adam
//
//  Created by 清 兰 on 12-8-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UI.h"
#import "Scene.h"

@interface UI()
- (void) onRightButtonClick:(SPEvent *)event;
- (void) onLeftButtonClick:(SPEvent *)event;
@end

@implementation UI

- (UI *)initWithScene:(Scene *)scene
{
    if ((self = [super init])) {
        mScene = [scene retain];
        
        /*
        NSString *text = @"To find out how to create your own game out of this scaffold, " \
        @"have a look at the 'First Steps' section of the Sparrow website!";
        
        SPTextField *textField = [[SPTextField alloc] initWithWidth:280 height:80 text:text];
        textField.x = 100;
        textField.y = 20;
        [self addChild:textField];
        */
        
        NSString *text1 = [NSString stringWithFormat:@"%.2f",scene.hero.speedX];
        mSpeedText = [[SPTextField alloc] initWithWidth:100 height:10 text:text1];
        mSpeedText.x = 100;
        mSpeedText.y = 20;
        [self addChild:mSpeedText];
        
        
        SPTexture *texture = [SPTexture textureWithContentsOfFile:@"qianjin.png"];
        SPButton *button = [SPButton buttonWithUpState:texture];
        button.x = 320;
        button.y = 250;
        button.width = 50;
        button.height = 50;
        [self addChild:button];
        mRightButton = button;
        
        texture = [SPTexture textureWithContentsOfFile:@"houtui.png"];
        SPButton *leftButton = [SPButton buttonWithUpState:texture];
        leftButton.x = 250;
        leftButton.y = 250;
        leftButton.width = 50;
        leftButton.height = 50;
        [self addChild:leftButton];
        mLeftButton = leftButton;
        
        [[SPStage mainStage].juggler addObject:self];
        
        [mRightButton addEventListener:@selector(onRightButtonClick:) atObject:self forType:SP_EVENT_TYPE_TRIGGERED];
        [mLeftButton addEventListener:@selector(onLeftButtonClick:) atObject:self forType:SP_EVENT_TYPE_TRIGGERED];

    }
    return self;
}

- (void) dealloc
{
    [mScene release];
    [mSpeedText release];
    [mLeftButton release];
    [mRightButton release];
    [super dealloc];
}

- (void) onLeftButtonClick:(SPEvent *)event
{
    mScene.hero.speedX -= 0.1;
}

- (void) onRightButtonClick:(SPEvent *)event
{
    mScene.hero.speedX += 0.1;
}

- (BOOL) isComplete
{
    return FALSE;
}

- (void) advanceTime:(double)seconds
{
    /*
    if (mLeftButton.isDown) {
        mScene.hero.speedX -= 0.1;
    } else if(mRightButton.isDown) {
        mScene.hero.speedX += 0.1;
    }
    */
    mSpeedText.text = [NSString stringWithFormat:@"%.2f",mScene.hero.speedX];
}
@end
