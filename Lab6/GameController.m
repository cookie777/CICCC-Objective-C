//
//  GameController.m
//  Lab6
//
//  Created by Takayuki Yamaguchi on 2021-02-27.
//

#import "GameController.h"

@implementation GameController{
}

- (instancetype)init
{
  self = [super init];
  if (self) {
    
    NSMutableArray *dices = [[NSMutableArray alloc] init];
    for (int i = 0; i < 5; i++){
      Dice *newDice = [[Dice alloc] init];
      [newDice setValue: arc4random_uniform(6)+1];
      [dices addObject:newDice];
    }
    
    _dices = [NSArray arrayWithArray:dices];
    _holdingIndexes = [NSMutableSet new];
    _rollCount = 0;
  }
  return self;
}

// getter
- (int)totalScore
{
  _totalScore = 0;
  for (Dice *dice in _dices){
    _totalScore += ([dice value] == 3) ? 0 : [dice value];
  }
  return _totalScore;
}


// change dice value except holding
- (void)rollDice
{
  for (int i = 0; i < 5; i++){
    if (![_holdingIndexes containsObject: [NSNumber numberWithInt:i]]){
      [_dices[i] setValue: arc4random_uniform(6)+1];
    }
  }
  _rollCount += 1;
}

- (void)holdDiceWithIndex: (NSNumber*) index
{
  if ([_holdingIndexes containsObject:index]){
    [_holdingIndexes removeObject:index];
  }else if ([index intValue] >= 0 && [index intValue] <= 4){
    [_holdingIndexes addObject:index];
  }
}

- (void)resetDice
{
  [_holdingIndexes removeAllObjects];
}



+ (void)displayCommandLists
{
  NSString *str = [NSString stringWithFormat:
                    @"\n\n"
                    "roll     : to roll a dice\n"
                    "hold     : to hold a dice\n"
                    "reset    : to un-hold all dices\n"
                    "done     : to end the game\n"
                    "display  : to show current stats\n\n"
                  ];
  NSLog(@"%@", str);
}

- (NSString*)generateDiceText
{
  NSString *diceIcons = @"";
  for (int i = 0; i < [_dices count]; i++){

    NSString *diceIcon = [NSString stringWithFormat:@"%@", [_dices[i] generateDiceIcon]];
    if ([_holdingIndexes containsObject: [NSNumber numberWithInt: i]]){
      diceIcon = [NSString stringWithFormat:@"[%@]", diceIcon];
    }
    diceIcons = [diceIcons stringByAppendingFormat:@" %@",diceIcon];
  }
  return  diceIcons;
}

- (void)displayCurrentStats
{
  
  int remainingRolls = 5 - _rollCount;
  
  NSString *str = [NSString stringWithFormat:
                    @"\n\n"
                    "--- Remaining Rolls : %d---\n"
                    "--------------------------\n"
                    "---- Current Dice --------\n"
                    "     %@     \n"
                    "---- Total Score : %d ----"
                  ,remainingRolls ,[self generateDiceText], [self totalScore]];
  NSLog(@"%@", str);
}

- (void)displayFinalStats
{
  NSString *str = [NSString stringWithFormat:
                    @"\n"
                    "Done! Your final score is as follow \n\n"
                    "---- Final Dice --------\n"
                    "     %@     \n"
                    "---- Total Score : %d ----\n"
                  ,[self generateDiceText], [self totalScore]];
  NSLog(@"%@", str);
}


@end
