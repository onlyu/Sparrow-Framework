//
//  Game.h
//  AppScaffold
//

#import <Foundation/Foundation.h>
#import <UIKit/UIDevice.h>
#import "Scene.h"
#import "UI.h"

@interface Game : SPSprite
{
  @private 
    float mGameWidth;
    float mGameHeight;
    Scene *mScene;
    UI *mUI;
}

- (id)initWithWidth:(float)width height:(float)height;

@property (nonatomic, assign) float gameWidth;
@property (nonatomic, assign) float gameHeight;

@end
