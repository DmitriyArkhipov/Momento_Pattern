//
//  HeroMomento.m
//  momento_pattern
//
//  Created by Dmitriy Arkhipov on 22.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "HeroMomento.h"

@implementation HeroMomento

- (instancetype) initWithPatrons:(int)patrons Lives:(int)lives {

    self = [super init];
    if (self) {
        _patrons = patrons;
        _lives = lives;
    }
    return self;

}

@end
