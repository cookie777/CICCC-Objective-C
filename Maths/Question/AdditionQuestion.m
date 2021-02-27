//
//  AdditionQuestion.m
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-26.
//

#import "AdditionQuestion.h"
#import "Question.h"

@implementation AdditionQuestion{
}

- (instancetype)init
{
  self = [super init];
  if (self) {
    [self generateQuestion];
  }
  return self;
}

 -(void)generateQuestion
{
  [self setQuestion:[NSString stringWithFormat:@"%d + %d ?", (int)[self leftValue], (int)[self rightValue]]];
  [self setAnswer:[self leftValue] + [self rightValue]];
}

@end
