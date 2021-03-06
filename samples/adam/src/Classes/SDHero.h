//
//  Hero.h
//  Adam
//
//  Created by 清 兰 on 12-8-13.
//  Copyright (c) 2012年 gamelanzi. All rights reserved.
//

#import "SPSprite.h"
#import "SPImage.h"

@interface SDHero : SPSprite
{
    SPImage *mBody;
    SPImage *mUmbrella;
    SPImage *mUmbrella1;
    SPImage *mLeg;
    SPImage *mLeg1;
    float mAccelerate;
    float mSpeedY;
}

+ (SDHero *)hero; 
- (void)up;
- (void)down;
- (void)update:(float) dt;

@end
