//
//  SDGameOverState.m
//  Adam
//
//  Created by 清 兰 on 12-8-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SDGameOverState.h"
#import "Sunday.h"
#import "SDGameContext.h"

@implementation SDGameOverState

- (id) init
{
    if (self = [super init]) {
        mUI = [[SPSprite alloc] init];
        
        NSString *text1 = [NSString stringWithFormat:@"Game Over"];
        SPTextField *textField = [SPTextField textFieldWithText:text1];
        textField.x = 100;
        textField.y = 20;
        textField.fontSize = 30;
        textField.width = 300;
        textField.height = 200;
        [mUI addChild:textField];

    }
    return self;
}

- (void) dealloc
{
    [mUI release];
    [super dealloc];
}

- (void) enter:(NSString *)message fromState:(NSString *)stateName
{
    SDGameContext *context = [SDGameContext sharedGameContext];
    context.ui = mUI;
}

- (void) update:(float)dt
{
    
}

@end
