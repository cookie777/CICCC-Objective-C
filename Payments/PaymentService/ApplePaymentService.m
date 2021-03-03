//
//  ApplePaymentService.m
//  Payments
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (BOOL)canProcessPayment {
  return arc4random_uniform(2);
}

- (void)processPaymentAmount:(NSInteger)price {
  NSLog(@"Apple Payment process amount: $%ld", (long)price);
}

@end
