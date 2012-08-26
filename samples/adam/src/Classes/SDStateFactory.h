//
//  SDStateFactory.h
//  Adam
//
//  Created by 清 兰 on 12-8-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SDSingleton.h"
#import "SDBaseState.h"

@interface SDStateFactory : NSObject
{
    @private
    NSMutableDictionary *mNamedStates;
}

SD_DECLEAR_SINGLETON(SDStateFactory)

- (SDBaseState *)stateFromName:(NSString *)stateName;

@end
