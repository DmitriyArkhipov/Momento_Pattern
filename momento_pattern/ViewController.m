//
//  ViewController.m
//  momento_pattern
//
//  Created by Dmitriy Arkhipov on 22.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ViewController.h"
#import "Hero.h"
#import "GameHistory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    GameHistory *gameHistory = [[GameHistory alloc] init];
    
    Hero *hero = [[Hero alloc] init];
    
    [hero shoot];
    
    [gameHistory.history addObject:[hero saveState]];
    
    
    [hero shoot];
    
    [hero restoreStateWithMomento:[gameHistory.history lastObject]];
    
    [hero shoot];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
