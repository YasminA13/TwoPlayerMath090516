//
//  ViewController.m
//  TwoPlayerMath090516
//
//  Created by Yasmin Ahmad on 2016-05-09.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"
#import "Player.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *startLabel;
@property (strong, nonatomic) IBOutlet UILabel *questionLabel;
@property (strong, nonatomic) IBOutlet UILabel *player1Label;
@property (strong, nonatomic) IBOutlet UILabel *player2Label;
@property (strong, nonatomic) IBOutlet UIButton *enterButton;
@property (strong, nonatomic) IBOutlet UITextField *answerTextField;
@property (strong, nonatomic) NSString *answerString; 
@property (strong, nonatomic) GameModel *gameModel;
@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UIButton *button3;
@property (strong, nonatomic) IBOutlet UIButton *button4;
@property (strong, nonatomic) IBOutlet UIButton *button5;
@property (strong, nonatomic) IBOutlet UIButton *button6;
@property (strong, nonatomic) IBOutlet UIButton *button7;
@property (strong, nonatomic) IBOutlet UIButton *button8;
@property (strong, nonatomic) IBOutlet UIButton *button9;
@property (strong, nonatomic) IBOutlet UIButton *button0;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initBeginGame]; 
    
    self.startLabel.text = @"Tap to Start";
    self.startLabel.backgroundColor = [UIColor lightGrayColor];

    self.questionLabel.text = @"Player 1: X + Y?";
    self.questionLabel.backgroundColor = [UIColor lightGrayColor];
    
    self.questionLabel.text = [NSString stringWithFormat:@"%d + %d", self.gameModel.firstNumber, self.gameModel.secondNumber];
    
    [self.button1 addTarget:self action:@selector(button1Pressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.button2 addTarget:self action:@selector(button2Pressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.button3 addTarget:self action:@selector(button3Pressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.button4 addTarget:self action:@selector(button4Pressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.button5 addTarget:self action:@selector(button5Pressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.button6 addTarget:self action:@selector(button6Pressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.button7 addTarget:self action:@selector(button7Pressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.button8 addTarget:self action:@selector(button8Pressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.button9 addTarget:self action:@selector(button9Pressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.button0 addTarget:self action:@selector(button0Pressed:) forControlEvents:UIControlEventTouchUpInside];
    
}


- (void)button1Pressed:(UIButton *)sender {
    NSLog(@"1");
    [self updateUI:@"1" withString:self.answerTextField.text];
}

- (void)button2Pressed:(UIButton *)sender {
    NSLog(@"2");
    [self updateUI:@"2" withString:self.answerTextField.text];
}

- (void)button3Pressed:(UIButton *)sender {
    NSLog(@"3");
    [self updateUI:@"3" withString:self.answerTextField.text];
}
- (void)button4Pressed:(UIButton *)sender {
    NSLog(@"4");
    [self updateUI:@"4" withString:self.answerTextField.text];
}
- (void)button5Pressed:(UIButton *)sender {
    NSLog(@"5");
    [self updateUI:@"5" withString:self.answerTextField.text];
}
- (void)button6Pressed:(UIButton *)sender {
    NSLog(@"6");
    [self updateUI:@"6" withString:self.answerTextField.text];
}

- (void)button7Pressed:(UIButton *)sender {
    NSLog(@"7");
    [self updateUI:@"7" withString:self.answerTextField.text];
}

- (void)button8Pressed:(UIButton *)sender {
    NSLog(@"8");
    [self updateUI:@"8" withString:self.answerTextField.text];
}

- (void)button9Pressed:(UIButton *)sender {
    NSLog(@"9");
    [self updateUI:@"9" withString:self.answerTextField.text];
}

- (void)button0Pressed:(UIButton *)sender {
    NSLog(@"0");
    [self updateUI:@"0" withString:self.answerTextField.text];
}

- (IBAction)enterPressed:(id)sender {
    
    int answer = self.gameModel.firstNumber + self.gameModel.secondNumber;
    
    if (self.answerTextField.text == [NSString stringWithFormat:@"%d", answer]) {
        NSLog(@"True"); 
    }
    
    
}


-(NSMutableString *)updateUI:(NSString *)currentInput withString:(NSString *)oldInput{
    if (self.answerTextField.text.length < 9) {
        NSMutableString *newAnswer = [[NSMutableString alloc]initWithFormat:@"%@", oldInput];
        [newAnswer appendString:[NSString stringWithFormat:@"%@", currentInput]];
        self.answerTextField.text = newAnswer;
        
        return newAnswer;
    }

    else{
        return nil; 
    }
   

}

-(void)initBeginGame{
    self.gameModel = [[GameModel alloc]init];
    
    
}

- (IBAction)enterButton:(id)sender {
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
