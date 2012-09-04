//
//  SDGamePlayState.h
//  Adam
//
//  Created by 清 兰 on 12-8-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SDBaseState.h"
#import "Sunday.h"
#import "Scene.h"
#import "SDPlayUI.h"

@interface SDGamePlayState : SDBaseState
{
    @private
    SDPlayUI *mUI;
    Scene *mScene;
}

@end
