//
//  main.m
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-24.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    bool gameOn = YES;
    NSLog(@"MATHS!");
    ScoreKeeper *sq = [[ScoreKeeper alloc] init];
    
    while (gameOn) {
      
      // Create question object
      AdditionQuestion *aq = [[AdditionQuestion alloc] init];
      // Prompt question to user
      NSLog(@"%@", aq.question);
      // Get user input
      NSString *userInput = [InputHandler init];
      // Judge if quit or not
      if ([userInput isEqual: @"quit"]){ break; }
      // Judge user input and display the result.
      if ([userInput intValue] == aq.answer){
        NSLog(@"✅Right!");
        sq.rightGuesses += 1;
      }else{
        NSLog(@"🚫Wrong!");
        sq.wrongGuesses += 1;
      }
      // Display socre
      NSLog(@"%@",sq.generateScore);
    }

  }
  return 0;
}
