//
//  StripePaymentService.m
//  Payments
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)price {
  NSLog(@"Stripe Payment process amount: $%ld", (long)price);
}

- (BOOL)canProcessPayment {
  return arc4random_uniform(2);
}

@end
