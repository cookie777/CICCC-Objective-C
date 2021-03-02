//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen



- (Pizza *)makePizzaWithSize:(enum PizzaSize)size toppings:(NSArray *)toppings
{
  
  // if no delegate == no manager, do by yourself.
  if (!_delegate){
    return [[Pizza alloc] initWithSize: size toppings:toppings];
  }
  
  // if no, don't create pizza
  if (![_delegate kitchen: self shouldMakePizzaOfSize:size andToppings:toppings]){
    return  nil;
  }
  
  Pizza *pizza;
  // if upgrade is on, force create large size
  if ([_delegate kitchenShouldUpgradeOrder: self]){
    pizza = [[Pizza alloc] initWithSize: PizzaSizeLarge toppings:toppings];
  }else{
    pizza = [[Pizza alloc] initWithSize: size toppings:toppings];
  }
  
  // check if delegate has certain method.
  // this time, execute this method if exists,
  if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]){
    [_delegate kitchenDidMakePizza:pizza];
  }
  
  return pizza;
}

@end
