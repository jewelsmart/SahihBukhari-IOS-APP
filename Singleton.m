//
//  Singleton.m
//  firstapp
//
//  Created by Jewel on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

@synthesize singletonNumber;

static Singleton *sharedSingleton = nil;

+ (Singleton *) sharedSingleton {
    @synchronized(self){
        if (sharedSingleton==nil) {
            sharedSingleton = [[self alloc]init];
        }
    }
    return sharedSingleton;
}

@end
