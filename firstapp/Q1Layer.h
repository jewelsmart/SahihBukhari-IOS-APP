//
//  Q1Layer.h
//  firstapp
//
//  Created by Jewel on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"
#import "Singleton.h"

@interface Q1Layer : CCLayer

+(id) scene;

@property int levelSideBar;

@property (nonatomic,strong) NSString *thisLevelScore;

@end
