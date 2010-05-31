//
//  SPAVSound.h
//  Sparrow
//
//  Created by Daniel Sperl on 29.05.10.
//  Copyright 2010 Incognitek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

#import "SPSound.h"

@interface SPAVSound : SPSound 
{
  @private
    NSData *mSoundData;
    double mDuration;
}

- (id)initWithContentsOfFile:(NSString *)path duration:(double)duration;
- (AVAudioPlayer *)createPlayer;

@end