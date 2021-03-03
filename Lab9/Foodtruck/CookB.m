//
//  Cook.m
//  Foodtruck
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "CookB.h"


@implementation CookB

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
  
  double price = 0;
  
  if ([food isEqualToString:@"bao"]){
    price = 3.2;
  }else if ([food isEqualToString:@"shortbread"]){
    price = 4.5;
  }else{
    price = 2.0;
  }
  
  return price;
}

@end
