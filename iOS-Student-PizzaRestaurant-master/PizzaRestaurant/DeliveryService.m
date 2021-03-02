//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
  self = [super init];
  if (self) {
    _deliveredPizza = [NSMutableArray new];
  }
  return self;
}

- (void)deliverPizza:(Pizza *)pizza{
  NSLog(@"Delivering Pizza now...");
  [_deliveryCar deliverPizza:pizza];
  [_deliveredPizza addObject:pizza];
}

- (void)displayDeliveredPizza
{
  NSLog(@"Delivered Pizza\n\n");
  [_deliveredPizza enumerateObjectsUsingBlock:^(Pizza *pizza, NSUInteger idx, BOOL *stop){
    NSLog(@"Pizza No.%lu",idx+1);
    NSLog(@"%@",pizza);
  }];
}


@end
