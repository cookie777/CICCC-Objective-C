//
//  main.m
//  Lab6
//
//  Created by Takayuki Yamaguchi on 2021-02-27.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    GameController *gameController = [[GameController alloc] init];
    [gameController rollDice];
    [gameController displayCurrentStats];
    
    while (YES) {
      if ([gameController rollCount] >= 5){
        [gameController displayFinalStats];
        break;
      }
      [GameController displayCommandLists];
      NSString *userCommand = [InputHandler getInputForPrompt:@"Enter your request: "];
      
      if ([userCommand isEqualToString:@"roll"]){
        [gameController rollDice];
      }else if ([userCommand isEqualToString:@"hold"]){
        NSString *selectedDice = [InputHandler getInputForPrompt:@"Enter the dice you want to hold/un-hold:"];
        NSNumber *tmp = [[[NSNumberFormatter alloc] init] numberFromString: selectedDice];
        NSNumber *selectedIndex = [NSNumber numberWithInt:[tmp intValue] -1];
        [gameController holdDiceWithIndex: selectedIndex];
      }else if ([userCommand isEqualToString:@"reset"]){
        [gameController resetDice];
      }else if ([userCommand isEqualToString:@"done"]){
        [gameController displayFinalStats];
        break;
      }else if ([userCommand isEqualToString:@"display"]){
        [gameController displayCurrentStats];
      }
      
      [gameController displayCurrentStats];
    }

  }
  return 0;
}
