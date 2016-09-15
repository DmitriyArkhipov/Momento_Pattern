//
//  Hero.m
//  momento_pattern
//
//  Created by Dmitriy Arkhipov on 22.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Hero.h"

/**
 Private property Hero
 */
@interface Hero ()

@property (assign, nonatomic) int patrons;

@property (assign, nonatomic) int lives;

@end

@implementation Hero

- (instancetype) init {
    
    self = [super init];
    
    if (self) {
        
        _lives = 5;
        _patrons = 10;
        
    }
    return self;

}


- (void) shoot {

    if (_patrons > 0) {
        _patrons--;
        NSLog(@"Производим выстрел. Осталось %i патронов.", _patrons);
    }

}

- (HeroMomento *) saveState {

    HeroMomento *momento = [[HeroMomento alloc] initWithPatrons:_patrons Lives:_lives];
    
    NSLog(@"Сохранение игры. Параметры: %i патронов, %i жизней.", _patrons, _lives);
    
    return momento;

}

- (void) restoreStateWithMomento:(HeroMomento *)momento {
    
    
    _patrons = momento.patrons;
    _lives = momento.lives;
    
    NSLog(@"Перезагрузка игры.Параметры: %i патронов, %i жизней.", _patrons, _lives);


}

@end
