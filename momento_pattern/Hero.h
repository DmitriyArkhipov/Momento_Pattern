//
//  Hero.h
//  momento_pattern
//
//  Created by Dmitriy Arkhipov on 22.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HeroMomento.h"

/**
 Originator: создает объект хранителя для сохранения своего состояния
 */
@interface Hero : NSObject

- (void) shoot;
- (HeroMomento *) saveState;
- (void) restoreStateWithMomento:(HeroMomento *)momento;

@end