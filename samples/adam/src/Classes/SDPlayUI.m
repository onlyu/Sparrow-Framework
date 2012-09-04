//
//  UI.m
//  Adam
//
//  Created by 清 兰 on 12-8-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SDPlayUI.h"
#import "Scene.h"
#import "SDPlayData.h"

@interface SDPlayUI()
- (void) onRightButtonClick:(SDEvent *)event;
- (void) onLeftButtonClick:(SDEvent *)event;
@end

@implementation SDPlayUI

- (SDPlayUI *)init
{
    if ((self = [super init])) {
        SDPlayData *playData = [SDPlayData sharedSDPlayData];
        
        NSString *text1 = [NSString stringWithFormat:@"Speed:%.2f",playData.speed];
        mSpeedText = [[SPTextField alloc] initWithWidth:100 height:10 text:text1];
        mSpeedText.x = 100;
        mSpeedText.y = 20;
        [self addChild:mSpeedText];
        
        NSString *distanceText = [NSString stringWithFormat:@"Distance:%.0f",playData.distance];
        mDistanceText = [[SPTextField alloc] initWithWidth:200 height:10 text:distanceText];
        mDistanceText.x = 200;
        mDistanceText.y = 20;
        [self addChild:mDistanceText];
        
        NSString *moneyText = [NSString stringWithFormat:@"Money:%.0f", playData.money];
        mMoneyText = [[SPTextField alloc] initWithWidth:100 height:10 text:moneyText];
        mMoneyText.x = 400;
        mMoneyText.y = 20;
        [self addChild:mMoneyText];
        
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
        
        [mRightButton addEventListener:@selector(onRightButtonClick:) atObject:self forType:SD_EVENT_CLICKED];
        [mLeftButton addEventListener:@selector(onLeftButtonClick:) atObject:self forType:SD_EVENT_CLICKED];

    }
    return self;
}

- (void) dealloc
{
    [mSpeedText release];
    [mDistanceText release];
    [mMoneyText release];
    [mLeftButton release];
    [mRightButton release];
    [super dealloc];
}

- (void) onLeftButtonClick:(SDEvent *)event
{
    SDPlayData *playData = [SDPlayData sharedSDPlayData];
    playData.speed -= 0.1;
}

- (void) onRightButtonClick:(SDEvent *)event
{
    SDPlayData *playData = [SDPlayData sharedSDPlayData];
    playData.speed += 0.1;
}


- (void) update:(double)seconds
{
    SDPlayData *playData = [SDPlayData sharedSDPlayData];
    mSpeedText.text = [NSString stringWithFormat:@"Speed:%.2f",playData.speed];

    NSString *distanceText = [NSString stringWithFormat:@"Distance:%.0f",playData.distance];
    mDistanceText.text = distanceText;
    
    NSString *moneyText = [NSString stringWithFormat:@"Money:%.0f", playData.money];
    mMoneyText.text = moneyText;
}
@end
