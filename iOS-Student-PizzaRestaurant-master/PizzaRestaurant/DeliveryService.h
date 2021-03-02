//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject
@property (nonatomic, strong) NSMutableArray* deliveredPizza;
@property (nonatomic, strong) DeliveryCar* deliveryCar;
- (void)deliverPizza:(Pizza *)pizza;
- (void)displayDeliveredPizza;
@end

NS_ASSUME_NONNULL_END
