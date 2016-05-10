//
//  Player.m
//  TwoPlayerMath090516
//
//  Created by Yasmin Ahmad on 2016-05-09.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)initWithPlayer:(NSString *)player{
    
    if (self = [super init]) {
        self.player = player;
        self.playerScore = 0;
        self.playerLives = 3;
    }
    return self;
}

-(void)scoreTotal:(NSInteger)score{
    
    self.playerScore += score;
}
    
    
-(void)loseLife:(NSInteger)lose{
    
    self.playerLives -= lose; 
}

-(NSString *)printScore{
    
    return [NSString stringWithFormat:@"%lu", (long)self.playerScore];
}
    
    
-(NSString *)printLives{
    
    return [NSString stringWithFormat:@"%lu", (long)self.playerLives];
}




@end
