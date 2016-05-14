//
//  Q4LAYER.m
//  firstapp
//
//  Created by Jewel on 7/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Q4LAYER.h"
#import "HelloWorldLayer.h"

@implementation Q4LAYER

@synthesize thisLevelScore;

+(id) scene
{
    CCScene *scene = [CCScene node];
    Q4LAYER *layer = [Q4LAYER node];
    
    CCSprite *background = [CCSprite spriteWithFile:@"background-1.png"];
    background.anchorPoint = ccp(0,0);
    [layer addChild:background z:-1];
    
    [scene addChild:layer];
    
    return scene;
}

-(void) nextQuestion {
    [[CCDirector sharedDirector] replaceScene:[CCTransitionSplitRows transitionWithDuration:1.0 scene:[HelloWorldLayer scene]]];
}

-(void) sameQuestion {
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFadeDown transitionWithDuration:1.0 scene:[HelloWorldLayer scene]]];
}

-(id) init
{
    // always call "super" init 
    // Apple recommends to re-assign "self" with the "super" return value
    if( (self=[super init])) {
        isTouchEnabled_ = YES;
        
        
    }
    return self;
}

-(void) ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:[touch view]];
    location = [[CCDirector sharedDirector] convertToGL:location];
    
}

-(void) ccTouchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:[touch view]];
    location = [[CCDirector sharedDirector] convertToGL:location];
    
}

-(void) ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:[touch view]];
    location = [[CCDirector sharedDirector] convertToGL:location];
    
}


@end
