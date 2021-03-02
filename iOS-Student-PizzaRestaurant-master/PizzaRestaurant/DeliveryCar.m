//
//  DeliveryCar.m
//  PizzaRestaurant
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "DeliveryCar.h"

@implementation DeliveryCar

- (void)deliverPizza:(Pizza *)pizza
{
  NSLog(@"Pizza Delivered. \n\nPizza details: %@", pizza);
}

@end
