//
//  SPEvent.m
//  Sparrow
//
//  Created by Daniel Sperl on 27.04.09.
//  Copyright 2011 Gamua. All rights reserved.
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the Simplified BSD License.
//

#import "SDEvent.h"
#import "SDEvent_Internal.h"

@implementation SDEvent

@synthesize target = mTarget;
@synthesize currentTarget = mCurrentTarget;
@synthesize type = mType;
@synthesize bubbles = mBubbles;

- (id)initWithType:(NSString*)type bubbles:(BOOL)bubbles
{    
    if ((self = [super init]))
    {        
        mType = [[NSString alloc] initWithString:type];
        mBubbles = bubbles;
    }
    return self;
}

- (id)initWithType:(NSString*)type
{
    return [self initWithType:type bubbles:NO];
}

- (id)init
{
    return [self initWithType:@"undefined"];
}

- (void)stopImmediatePropagation
{
    mStopsImmediatePropagation = YES;
}

- (void)stopPropagation
{
    mStopsPropagation = YES;
}

+ (SDEvent*)eventWithType:(NSString*)type bubbles:(BOOL)bubbles
{
    return [[[SDEvent alloc] initWithType:type bubbles:bubbles] autorelease];
}

+ (SDEvent*)eventWithType:(NSString*)type
{
    return [[[SDEvent alloc] initWithType:type] autorelease];
}

- (void)dealloc
{
    [mType release];
    [mTarget release];
    [mCurrentTarget release];
    [super dealloc];
}

@end

// -------------------------------------------------------------------------------------------------

@implementation SDEvent (Internal)

- (BOOL)stopsImmediatePropagation
{ 
    return mStopsImmediatePropagation;
}

- (BOOL)stopsPropagation
{ 
    return mStopsPropagation;
}

- (void)setTarget:(SPEventDispatcher*)target
{
    if (target != mTarget)
    {
        [mTarget release];
        mTarget = [target retain];
    }        
}

- (void)setCurrentTarget:(SPEventDispatcher*)currentTarget
{
    if (currentTarget != mCurrentTarget)
    {
        [mCurrentTarget release];
        mCurrentTarget = [currentTarget retain];
    }
}

@end
