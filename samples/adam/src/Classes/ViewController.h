//
//  ViewController.h
//  ViewControllerTest
//

#import <UIKit/UIKit.h>

#import "SDGameController.h"

@interface ViewController : UIViewController
{
  @private
    SPView *mSparrowView;
}

- (id)initWithSparrowView:(SPView *)sparrowView;

@end
