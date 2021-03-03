//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//

#import "PayPalPaymentService.h"

@implementation PayPalPaymentService

- (void)processPaymentAmount:(NSInteger)price {
  NSLog(@"PayPal Payment process amount: $%ld", (long)price);
}

- (BOOL)canProcessPayment {
  return arc4random_uniform(2);
}


@end
