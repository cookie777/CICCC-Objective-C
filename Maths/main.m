//
//  main.m
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-24.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    bool gameOn = YES;
    NSLog(@"MATHS!\n");
    
    ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
    QuestionManager *questionManager = [[QuestionManager alloc] init];
    QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
    
    
    while (gameOn) {
      
      // Create question object
      Question *question = [questionFactory generateRandomQuestion];
      // add new question to manager
      [[questionManager questions] addObject:question];
      // Prompt question to user
      NSLog(@"%@", question.question);
      // Get user input
      NSString *userInput = [InputHandler getUserInput];
      // Judge if quit or not
      if ([userInput isEqual: @"quit"]){ break; }
      // Judge user input and display the result.
      // when answer is called, answerTime is updated.
      if ([userInput intValue] == question.answer){
        NSLog(@"✅Right!");
        scoreKeeper.rightGuesses += 1;
      }else{
        NSLog(@"🚫Wrong!");
        scoreKeeper.wrongGuesses += 1;
      }
      // Display socre
      NSLog(@"%@",scoreKeeper.generateScore);
      NSLog(@"%@",[questionManager timeOutput]);
    }

  }
  return 0;
}
