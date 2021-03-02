//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Kitchen.h"
#import "CheeryManager.h"
#import "DishonestManager.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    
    NSLog(@"Please pick your pizza size and toppings:");
    
    Kitchen *restaurantKitchen = [Kitchen new];
    CheeryManager *cherryManager;
    DishonestManager *dishonestManager;
    DeliveryService *deliveryService = [DeliveryService new];
    DeliveryCar *deliveryCar = [DeliveryCar new];
    [deliveryService setDeliveryCar:deliveryCar];

    while (TRUE) {
      // Loop forever
      NSString *managerPrompt = @"\n"
      "Chose the manager:\n"
      "0. Display delivered history.\n\n"
      "1. Cheery Manager\n"
      "2. Dishonest Manage\n"
      "3. I'll do it by myself\n\n"
      ;
      
      NSString *manageType = [InputHandler getInputForPrompt: managerPrompt];
      
      if ([manageType isEqualTo: @"0"]){
        [deliveryService displayDeliveredPizza];
        continue;
      }
      
      // "Lazy Initialization"?
      if ([manageType isEqualTo: @"1"]){
        if (cherryManager == NULL){cherryManager = [[CheeryManager alloc] init];}
        [restaurantKitchen setDelegate: cherryManager];
        [cherryManager setDeliverService:deliveryService];
      }else if ([manageType isEqualTo: @"2"]){
        if (dishonestManager == NULL){dishonestManager = [[DishonestManager alloc] init];}
        [restaurantKitchen setDelegate: dishonestManager];
        [dishonestManager setDeliverService:deliveryService];
      }else{
        [restaurantKitchen setDelegate: nil];
      }
      
      
      NSString *inputString = [InputHandler getInputForPrompt:@"Input your pizza order :"];
      NSLog(@"Your order was %@", inputString);
      
      // Take the first word of the command as the size, and the rest as the toppings
      NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
      
      // And then send some message to the kitchen...
      if ([commandWords count] > 0){
        NSString *size = [commandWords[0] lowercaseString];
        enum PizzaSize pizzaSize;
        if ([size isEqualTo:@"small"]){
          pizzaSize = PizzaSizeSmall;
        }else if ([size isEqualTo:@"medium"]){
          pizzaSize = PizzaSizeMedium;
        }else if ([size isEqualTo:@"large"]){
          pizzaSize = PizzaSizeLarge;
        }else{
          NSLog(@"invalid size");
          continue;
        }
        
        Pizza* pizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings: [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)]];
        
        NSLog(@"%@",pizza == NULL ? @"No pizza!": @"");
      }else{
        NSLog(@"invalid command");
        continue;
      }
    }
    
  }
  return 0;
}

