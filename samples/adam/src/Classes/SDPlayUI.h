//
//  UI.h
//  Adam
//
//  Created by 清 兰 on 12-8-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SPSprite.h"
#import "Scene.h"
#import "SPTextField.h"
#import "SPAnimatable.h"
#import "SPButton.h"

@interface SDPlayUI : SPSprite
{
@private
    SPTextField *mSpeedText;
    SPTextField *mDistanceText;
    SPTextField *mMoneyText;
    SPButton *mLeftButton;
    SPButton *mRightButton;
}

- (void) update:(double)dt;
@end
