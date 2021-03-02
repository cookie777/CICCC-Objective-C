//
//  LazyManager.m
//  PizzaRestaurant
//
//  Created by Takayuki Yamaguchi on 2021-03-01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "DishonestManager.h"

@implementation DishonestManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(enum PizzaSize)size andToppings:(NSArray *)toppings {
  return NO;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
  return NO;
}

@end
