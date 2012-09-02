//
//  Scene.h
//  Adam
//
//  Created by 清 兰 on 12-8-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SPSprite.h"
#import "Hero.h"

@interface Scene : SPSprite 
{
    @private
    float mWindowWidth;
    float mWindowHeight;
    Hero *mHero;
}

- (Scene *)initWithWidth:(int)width Height:(int)height;

@property (nonatomic, readonly) Hero *hero;

- (void) update:(float) dt;

@end
