//
//  GameHistory.h
//  momento_pattern
//
//  Created by Dmitriy Arkhipov on 22.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Caretaker: выполняет только функцию хранения объекта Memento, 
 в то же время у него нет полного доступа к хранителю и никаких 
 других операций над хранителем, кроме собственно сохранения, 
 он не производит
 */
@interface GameHistory : NSObject

@property (strong, nonatomic) NSMutableArray *history;

@end
