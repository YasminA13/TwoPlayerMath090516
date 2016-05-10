//
//  Player.h
//  TwoPlayerMath090516
//
//  Created by Yasmin Ahmad on 2016-05-09.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, strong) NSString *player; 
@property (nonatomic, assign) NSInteger *playerLives;
@property (nonatomic, assign) NSInteger *playerScore;

-(instancetype)initWithPlayer:(NSString *)player; 
-(void)scoreTotal:(NSInteger)score;
-(void)loseLife:(NSInteger)lose;
-(NSString *)printScore;
-(NSString *)printLives; 

@end
