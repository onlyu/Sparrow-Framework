//
//  SDPlayData.h
//  Adam
//
//  Created by 清 兰 on 12-9-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SDSingleton.h"

@interface SDPlayData : NSObject
{
    @private
    double mSpeed;
    double mScore;
    double mDistance;
    double mMoney;
}

SD_DECLEAR_SINGLETON(SDPlayData)

- (void) reset;

@property (nonatomic, assign) double speed;
@property (nonatomic, assign) double score;
@property (nonatomic, assign) double distance;
@property (nonatomic, assign) double money;
@end


