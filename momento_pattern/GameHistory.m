//
//  GameHistory.m
//  momento_pattern
//
//  Created by Dmitriy Arkhipov on 22.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "GameHistory.h"

@implementation GameHistory

- (instancetype) init {

    self = [super init];
    if (self) {
        _history = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
