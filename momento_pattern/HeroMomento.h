//
//  HeroMomento.h
//  momento_pattern
//
//  Created by Dmitriy Arkhipov on 22.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Memento: хранитель, который сохраняет состояние объекта Originator и предоставляет полный доступ только этому объекту Originator
 */
@interface HeroMomento : NSObject

@property (assign, nonatomic) int patrons;
@property (assign, nonatomic) int lives;

- (instancetype) initWithPatrons:(int)patrons Lives:(int)lives;

@end
