//
//  Dice.h
//  Lab6
//
//  Created by Takayuki Yamaguchi on 2021-02-27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property (nonatomic, assign) int value;
- (NSString *)generateDiceIcon;

@end

NS_ASSUME_NONNULL_END
