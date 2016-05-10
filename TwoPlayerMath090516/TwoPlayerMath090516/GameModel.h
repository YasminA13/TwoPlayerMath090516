//
//  GameModel.h
//  TwoPlayerMath090516
//
//  Created by Yasmin Ahmad on 2016-05-09.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property (nonatomic, strong) Player *p1;
@property (nonatomic, strong) Player *p2;

//this is our question
@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger firstNumber;
@property (nonatomic, assign) NSInteger secondNumber;


@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) Player *playerUp;

-(instancetype)initBeginGame;
-(NSString *)printQuestion;
-(NSString *)printAnswer;


@end
