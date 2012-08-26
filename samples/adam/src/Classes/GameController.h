//
//  GameController.h
//  AppScaffold
//

#import "SPStage.h"
#import "SDGameContext.h"

@interface GameController : SPStage
{
  @private
    SDGameContext *mGame;
}

- (void)rotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
                       animationTime:(double)time;

@end
