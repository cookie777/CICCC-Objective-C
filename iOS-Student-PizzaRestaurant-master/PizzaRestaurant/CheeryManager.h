//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Takayuki Yamaguchi on 2021-03-01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheeryManager : NSObject<KitchenDelegate>

@property (nonatomic, strong) DeliveryService* deliverService;
@end

NS_ASSUME_NONNULL_END
