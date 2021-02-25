//
//  AdditionQuestion.m
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-24.
//

#import "AdditionQuestion.h"

//private properties and methods
@interface AdditionQuestion()
@property (assign, atomic, readonly) int maxNum;

@end

@implementation AdditionQuestion{
  //private instance vars
}

- (instancetype)init{
  _maxNum = 100;
  
  if (self = [super init]){
    
    int left = arc4random_uniform(_maxNum);
    int right = arc4random_uniform(_maxNum);
    
    _question = [NSString stringWithFormat:@"%d + %d ?", left, right];
    _answer = left + right;
  
  }
  
  return self;
}

@end
