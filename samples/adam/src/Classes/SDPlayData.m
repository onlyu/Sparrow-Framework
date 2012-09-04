//
//  SDPlayData.m
//  Adam
//
//  Created by 清 兰 on 12-9-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SDPlayData.h"

@implementation SDPlayData

@synthesize speed = mSpeed;
@synthesize score = mScore;
@synthesize distance = mDistance;
@synthesize money = mMoney;

SD_IMPLEMENT_SINGLETON(SDPlayData)

- (id) init
{
    if (self = [super init]) {
        [self reset];
    }
    return self;
}

- (void) reset
{
    mSpeed = 2.5;
    mScore = 0;
    mDistance = 0;
    mMoney = 0;
}

@end
