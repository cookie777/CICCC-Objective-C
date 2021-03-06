//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Takayuki Yamaguchi on 2021-03-01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(enum PizzaSize)size toppings:(NSArray *)toppings
{
  self = [super init];
  if (self) {
    _size = size;
    _toppings = toppings;
  }
  return self;
}

- (NSString *)description
{
  NSString *sizeStr;
  switch (_size) {
    case PizzaSizeSmall:
      sizeStr = @"small";
      break;
    case PizzaSizeMedium:
      sizeStr = @"medium";
      break;
    case PizzaSizeLarge:
      sizeStr = @"large";
      break;

  }
  
  return [NSString stringWithFormat:@"size: %@, toppings: %@", sizeStr, _toppings];
}
@end
