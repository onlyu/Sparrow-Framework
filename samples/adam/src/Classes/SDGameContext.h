//
//  GameContext.h
//  adam
//
//  Created by Lan Qing on 12-8-26.
//  Copyright (c) 2012 SundayGame. All rights reserved.
//
//  Permission is given to use this source code file without charge in any
//  project, commercial or otherwise, entirely at your risk, with the condition
//  that any redistribution (in part or whole) of source code must retain
//  this copyright and permission notice. Attribution in compiled projects is
//  appreciated but not required.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIDevice.h>
#import "SDFsm.h"

@interface SDGameContext : SPSprite <SPAnimatable>
{
  @private 
    float mGameWidth;
    float mGameHeight;
    
    SDFsm *mFsm;

    SPSprite *mUILayer;
    SPSprite *mSceneLayer;
}

+ (SDGameContext *)sharedGameContext;

- (id)initWithWidth:(float)width height:(float)height;

@property (nonatomic, assign) float gameWidth;
@property (nonatomic, assign) float gameHeight;
@property (nonatomic, assign) SPSprite *ui;
@property (nonatomic, assign) SPSprite *scene;

- (void) toState:(NSString *)stateName;

@end
