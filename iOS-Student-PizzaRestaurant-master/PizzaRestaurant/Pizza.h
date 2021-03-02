//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Takayuki Yamaguchi on 2021-03-01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

enum PizzaSize{
  small, medium, large
};

@interface Pizza : NSObject

- (instancetype)initWithSize:(enum PizzaSize)size toppings:(NSArray *)toppings;
@property (nonatomic) Size size;
@property (nonatomic, strong) NSArray* toppings;

@end

NS_ASSUME_NONNULL_END
