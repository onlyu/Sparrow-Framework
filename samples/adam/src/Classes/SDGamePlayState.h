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
#import "UI.h"

@interface SDGamePlayState : SDBaseState
{
    @private
    UI *mUI;
    Scene *mScene;
}

@end
