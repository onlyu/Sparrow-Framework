//
//  Scene.h
//  Adam
//
//  Created by 清 兰 on 12-8-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SPSprite.h"
#import "SDHero.h"

@interface Scene : SPSprite 
{
    @private
    float mWindowWidth;
    float mWindowHeight;
    SDHero *mHero;
}

- (Scene *)initWithWidth:(int)width Height:(int)height;

@property (nonatomic, readonly) SDHero *hero;

- (void) update:(float) dt;
- (void) reset;

@end
