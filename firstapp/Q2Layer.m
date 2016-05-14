//
//  Q2Layer.m
//  firstapp
//
//  Created by Jewel on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Q2Layer.h"
#import "Q3Layer.h"

@implementation Q2Layer

@synthesize thisLevelScore;

+(id) scene
{
    CCScene *scene = [CCScene node];
    Q2Layer *layer = [Q2Layer node];
    
    CCSprite *background = [CCSprite spriteWithFile:@"background-1.png"];
    background.anchorPoint = ccp(0,0);
    [layer addChild:background z:-1];
    
    [scene addChild:layer];
    
    return scene;
}

-(void) nextQuestion {
    [[CCDirector sharedDirector] replaceScene:[CCTransitionSplitRows transitionWithDuration:1.0 scene:[Q3Layer scene]]];
}

-(void) sameQuestion {
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFadeDown transitionWithDuration:1.0 scene:[Q2Layer scene]]];
}

-(id) init
{
	// always call "super" init 
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		isTouchEnabled_ = YES;
        
        Singleton *newSingleton = [Singleton sharedSingleton];
        thisLevelScore = newSingleton.singletonNumber;
        
        
        //Sidebar
        CCMenuItemFont *level = [CCMenuItemFont itemWithLabel:[CCLabelBMFont labelWithString:@"Level:" fntFile:@"scoretitle.fnt"] target:self selector:@selector(nextQuestion)];
        level.anchorPoint = ccp(1,1);
        level.position = ccp(-154,64);
        
        CCMenuItemFont *levelNumber = [CCMenuItemFont itemWithLabel:[CCLabelBMFont labelWithString:@"11" fntFile:@"score.fnt"] target:self selector:@selector(nextQuestion)];
        levelNumber.anchorPoint = ccp(1,1);
        levelNumber.position = ccp(-154,30);
        
        CCMenuItemFont *score = [CCMenuItemFont itemWithLabel:[CCLabelBMFont labelWithString:@"Score:" fntFile:@"scoretitle.fnt"] target:self selector:@selector(nextQuestion)];
        score.anchorPoint = ccp(1,1);
        score.position = ccp(-153,-5);
        
        CCMenuItemFont *scoreNumber = [CCMenuItemFont itemWithLabel:[CCLabelBMFont labelWithString:thisLevelScore fntFile:@"score.fnt"]];
        scoreNumber.anchorPoint = ccp(1,1);
        scoreNumber.position = ccp(-150,-40);
        scoreNumber.scale = 0.8;
        
        CCMenuItemFont *lives = [CCMenuItemFont itemWithLabel:[CCLabelBMFont labelWithString:@"Lives:" fntFile:@"scoretitle.fnt"] target:self selector:@selector(nextQuestion)];
        lives.anchorPoint = ccp(1,1);
        lives.position = ccp(-154,-75);
        
        
        //Question1
        CCMenuItemFont *question1 = [CCMenuItemFont itemWithLabel:[CCLabelBMFont labelWithString:@"Take off my skin - \nI won't cry, but you \nwill! What am I?" fntFile:@"title3lines.fnt"] target:self selector:@selector(nextQuestion)];
        question1.anchorPoint = ccp(1,1);
        question1.position = ccp(235,140);
        
        //Answers
        CCMenuItemFont *answer1 = [CCMenuItemFont itemWithLabel:[CCLabelBMFont labelWithString:@"4" fntFile:@"answer1line.fnt"] target:self selector:@selector(nextQuestion)];
        answer1.anchorPoint = ccp(1,1);
        answer1.position = ccp(10,0);
        
        CCMenuItemFont *answer2 = [CCMenuItemFont itemWithLabel:[CCLabelBMFont labelWithString:@"No!" fntFile:@"answer1line.fnt"] target:self selector:@selector(nextQuestion)];
        answer2.anchorPoint = ccp(1,1);
        answer2.position = ccp(180,0);
        
        CCMenuItemFont *answer3 = [CCMenuItemFont itemWithLabel:[CCLabelBMFont labelWithString:@"Yes!" fntFile:@"answer1line.fnt"] target:self selector:@selector(nextQuestion)];
        answer3.anchorPoint = ccp(1,1);
        answer3.position = ccp(10,-80);
        
        CCMenuItemFont *answer4 = [CCMenuItemFont itemWithLabel:[CCLabelBMFont labelWithString:@"No!" fntFile:@"answer1line.fnt"] target:self selector:@selector(nextQuestion)];
        answer4.anchorPoint = ccp(1,1);
        answer4.position = ccp(180,-80);
        
        CCMenu *menu = [CCMenu menuWithItems:level,levelNumber,score,scoreNumber,lives,question1,answer1,answer2,answer3,answer4, nil];
        [self addChild:menu];

		
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
