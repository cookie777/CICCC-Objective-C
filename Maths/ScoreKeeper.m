//
//  ScoreKeeper.m
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-24.
//

#import "ScoreKeeper.h"

@interface ScoreKeeper()
@end

@implementation ScoreKeeper{
}

- (NSString *) generateScore
{
  
  float score = (float)[self rightGuesses]/ ([self rightGuesses] + [self wrongGuesses]);
  score = floor(score*100);
  
  return [NSString stringWithFormat:@"\nscore: \n%zd right, %zd wrong ---- %.f%%",
          [self rightGuesses],
          [self wrongGuesses],
          score
          ];
}

@end
