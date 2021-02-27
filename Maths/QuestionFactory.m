//
//  QuestionFactory.m
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-26.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory{
  NSArray *_questionSubclassNames;
}

- (instancetype)init
{
  self = [super init];
  if (self) {
    _questionSubclassNames =  @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
//    _questionSubclassNames =  @[@"AdditionQuestion"];

  }
  return self;
}
- (Question*)generateRandomQuestion
{
  int questionIndex = arc4random_uniform((int)[_questionSubclassNames count]);
  return [[NSClassFromString(_questionSubclassNames[questionIndex]) alloc] init];
}

@end
