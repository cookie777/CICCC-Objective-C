//
//  AdditionQuestion.m
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-24.
//

#import "Question.h"

//private properties and methods
@interface Question()
@property (assign, atomic, readonly) int maxNum;

@end

@implementation Question{
  //private instance vars
}

- (instancetype)init{
  _maxNum = 100;
  
  if (self = [super init]){
    _startTime = [NSDate date];
    
    _leftValue = arc4random_uniform(_maxNum);
    _rightValue = arc4random_uniform(_maxNum);
  
  }
  
  return self;
}

// abstract method. Subclass must override this.
- (void)generateQuestion
{}


// override getter
// Whenever answer is called, update endtime
- (NSInteger)answer
{
  _endTime = [NSDate date];
  return _answer;
}

- (NSTimeInterval)answerTime
{
  NSTimeInterval n = [_endTime timeIntervalSinceDate:_startTime];
  return n;
}

@end
