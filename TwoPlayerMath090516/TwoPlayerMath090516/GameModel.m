//
//  GameModel.m
//  TwoPlayerMath090516
//
//  Created by Yasmin Ahmad on 2016-05-09.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

-(instancetype)init{
    self = [super init];
    if (self) {
        self.p1 = [[Player alloc]initWithPlayer:@"Player1"];
        self.p2 = [[Player alloc]initWithPlayer:@"Player2"];
        
        
//        self.question = [self printQuestion];
        self.firstNumber = arc4random_uniform(20);
        self.secondNumber = arc4random_uniform(20);
        
        self.answer = self.firstNumber + self.secondNumber;
        self.playerUp = self.p1;
        
        
    }
    return self; 
}


-(NSString *)printQuestion{
    
    NSInteger firstNum = arc4random_uniform(20);
    NSInteger secondNum = arc4random_uniform(20);
    NSString *addition = @"+";
    
    self.question = [NSString stringWithFormat:@"%ld %@ %ld", (long)firstNum, addition, (long)secondNum];
   // return [NSString stringWithFormat:@"%@: %@", self.p1.player, self.question];
    return self.question; 
}




//-(NSString *)printAnswer;

@end
