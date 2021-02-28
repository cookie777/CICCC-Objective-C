//
//  GameController.h
//  Lab6
//
//  Created by Takayuki Yamaguchi on 2021-02-27.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property (nonatomic, strong) NSArray<Dice*>* dices;
@property (nonatomic, strong) NSMutableSet<NSNumber*>* holdingIndexes;
@property (nonatomic, assign) int rollCount;
@property (nonatomic, assign) int totalScore;
- (void)holdDiceWithIndex: (NSNumber*) index;
- (void)rollDice;
- (void)resetDice;

+ (void)displayCommandLists;
- (NSString*)generateDiceText;
- (void)displayCurrentStats;
- (void)displayFinalStats;

@end

NS_ASSUME_NONNULL_END
