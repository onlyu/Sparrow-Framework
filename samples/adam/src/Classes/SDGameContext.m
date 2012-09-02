//
//  GameContext.m
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

#import "SDGameContext.h" 
#import "Scene.h"
#import "UI.h"

// --- private interface ---------------------------------------------------------------------------

@interface SDGameContext ()

- (void)setup;
- (void)onEggTouched:(SPTouchEvent *)event;
- (void)onResize:(SPResizeEvent *)event;

@end


// --- class implementation ------------------------------------------------------------------------

@implementation SDGameContext

@synthesize gameWidth  = mGameHeight;
@synthesize gameHeight = mGameWidth;

static SDGameContext *sGameContext = nil;
+ (SDGameContext *)sharedGameContext
{
    return sGameContext;
}

- (id)initWithWidth:(float)width height:(float)height
{
    if ((self = [super init]))
    {
        sGameContext = self;
        mGameWidth = width;
        mGameHeight = height;
        
        [self setup];
    }
    return self;
}

- (void)dealloc
{
    // release any resources here
    
    [Media releaseAtlas];
    [Media releaseSound];
    
    [mFsm release];
    
    [mUILayer release];
    [mSceneLayer release];
    [super dealloc];
}

- (void)setup
{
    // This is where the code of your game will start. 
    // In this sample, we add just a few simple elements to get a feeling about how it's done.
    
    [SPAudioEngine start];  // starts up the sound engine
    
    [Media initAtlas];      // loads your texture atlas -> see Media.h/Media.m
    [Media initSound];      // loads all your sounds    -> see Media.h/Media.m
    
    mSceneLayer = [[SPSprite alloc] init];
    mUILayer = [[SPSprite alloc] init];    
    
    [self addChild:mSceneLayer];
    [self addChild:mUILayer];
    
    //Scene *scene = [[Scene alloc] initWithWidth:mGameWidth Height:mGameHeight];
    //self.ui = [[UI alloc] initWithScene:scene];
    //self.scene = scene;
    
    mFsm = [SDFsm fsmWithStates:[NSArray arrayWithObjects:@"Menu", @"Menu", nil]];
    [mFsm enter:@"Menu" messge:@"enterMenu"];
    
 
    [self addEventListener:@selector(onResize:) atObject:self forType:SP_EVENT_TYPE_RESIZE];
    [[SPStage mainStage].juggler addObject:self];
}

- (void)onEggTouched:(SPTouchEvent *)event
{
    NSSet *touches = [event touchesWithTarget:self andPhase:SPTouchPhaseEnded];
    if ([touches anyObject]) {
        [Media playSound:@"sound.caf"];
    }
}

- (void)onResize:(SPResizeEvent *)event
{
    NSLog(@"new size: %.0fx%.0f (%@)", event.width, event.height, 
          event.isPortrait ? @"portrait" : @"landscape");
}

- (void) setUi:(SPSprite *)ui
{
    [mUILayer removeAllChildren];
    [mUILayer addChild:ui];
}

- (SPSprite *)ui
{
    return [mUILayer childAtIndex:0];
}

- (void) setScene:(SPSprite *)scene
{
    [mSceneLayer removeAllChildren];
    [mSceneLayer addChild:scene];
}

- (SPSprite *)scene
{
    return [mSceneLayer childAtIndex:0];
}

- (void) toState:(NSString *)stateName
{
    [mFsm enter:stateName messge:@""];
}

- (BOOL) isComplete
{
    return NO;
}

- (void) advanceTime:(double)seconds
{
    [mFsm update:seconds];
}

@end
