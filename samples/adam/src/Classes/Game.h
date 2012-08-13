//
//  Game.h
//  AppScaffold
//

#import <Foundation/Foundation.h>
#import <UIKit/UIDevice.h>
#import "Umbrella.h"
#import "Hero.h"

@interface Game : SPSprite
{
  @private 
    float mGameWidth;
    float mGameHeight;
    Hero *hero;
}

- (id)initWithWidth:(float)width height:(float)height;

@property (nonatomic, assign) float gameWidth;
@property (nonatomic, assign) float gameHeight;

@end
