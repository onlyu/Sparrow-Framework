//
//  UmbrellaManager.h
//  Adam
//
//  Created by 清 兰 on 12-8-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SPSprite.h"

@interface UmbrellaManager : SPSprite
{
    @private
    NSMutableArray *mUmbrellas;
}

+ (UmbrellaManager *)instance;

@end
