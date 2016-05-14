//
//  Q4LAYER.h
//  firstapp
//
//  Created by Jewel on 7/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"
#import "Singleton.h"

@interface Q4LAYER : CCLayer

@property (nonatomic,strong) NSString *thisLevelScore;

+(id) scene;

@end
