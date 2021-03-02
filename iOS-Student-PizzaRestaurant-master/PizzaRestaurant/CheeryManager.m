//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Takayuki Yamaguchi on 2021-03-01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(enum PizzaSize)size andToppings:(nonnull NSArray *)toppings {
  return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
  return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza{
  NSLog(@"It’s on the house!🥳");
}

@end
