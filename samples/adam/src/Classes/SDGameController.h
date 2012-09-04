//
//  GameController.h
//  AppScaffold
//

#import "SPStage.h"
#import "SDGameContext.h"

@interface SDGameController : SPStage
{
  @private
    SDGameContext *mGame;
}

- (void)rotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
                       animationTime:(double)time;

@end
