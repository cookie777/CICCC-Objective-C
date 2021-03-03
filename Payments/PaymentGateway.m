//
//  PaymentGateway.m
//  Payments
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
- (void)processPaymentAmount:(NSInteger) price
{
  if ([[self delegate] canProcessPayment]){
    [[self delegate] processPaymentAmount:price];
  }else{
    NSLog(@"Sorry, something wrong happened. We couldn't succeed the process.");
  }
  
}
@end
