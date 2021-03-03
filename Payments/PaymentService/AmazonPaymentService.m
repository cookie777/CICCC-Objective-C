//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)price {
  NSLog(@"Amazon Payment process amount: $%ld", (long)price);
}

- (BOOL)canProcessPayment {
  return arc4random_uniform(2);
}

@end
