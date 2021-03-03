//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "CookA.h"
#import "CookB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        CookA *cookA = [[CookA alloc] init];
        // set truckA and truckB's delegate to your new instance.
        [truckA setDelegate:cookA];
        [truckB setDelegate:cookA];

        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
        
        // create instances of your delegate class
        CookB *cookB = [[CookB alloc] init];
        // set truckA and truckB's delegate to your new instance.
        [truckA setDelegate:cookB];
        [truckB setDelegate:cookB];

        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}
