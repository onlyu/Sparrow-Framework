//
//  Umbrella.m
//  Adam
//
//  Created by 清 兰 on 12-8-8.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Umbrella.h"

@implementation Umbrella

- (id)initWithType:(NSString *)type
{
    //if ((self = [super initWithContentsOfFile:[NSString stringWithFormat:@"%s_umbrella.png" :type]]))
    if ((self = [super initWithContentsOfFile:@"blue_umbrella.png"]))
    {
        self.pivotX = (int)self.width / 2;
        self.pivotY = (int)self.height / 2;
        self.rotation = SP_D2R(-15);
        
        SPTween *tween = [SPTween tweenWithTarget:self time:1.0 transition:SP_TRANSITION_EASE_IN_OUT];
        [tween animateProperty:@"rotation" targetValue:SP_D2R(15)];
        tween.loop = SPLoopTypeReverse;
        [[SPStage mainStage].juggler addObject:tween];
         
    }
    return self;
}

+ (Umbrella *)umbrellaWithType:(NSString *)type
{
    return [[[Umbrella alloc] initWithType:type] autorelease];
}
@end
