//
//  Singleton.h
//  firstapp
//
//  Created by Jewel on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property (nonatomic,strong) NSString *singletonNumber;

+ (Singleton *) sharedSingleton;

@end
