//
//  main.m
//  Payments
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PayPalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
    int dollarValue = arc4random_uniform(901)+100; // 0...900 + 100
    NSLog(@"Thank you for shopping at Acme.com");
    NSLog(@"Your total today is $%d",dollarValue);
    
    NSNumber *num;
    while (YES) {
      NSString *userInputStr = [InputHandler getInputForPrompt:@"Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon"];
      num = [[[NSNumberFormatter alloc] init] numberFromString: userInputStr];
      if (num == NULL || [num intValue] < 1 || [num intValue] > 3){
        NSLog(@"Invalid number.Please try again.");
        continue;
      }else{
        NSLog(@"Input %d", [num intValue]);
        break;
      }
    }
    
    PayPalPaymentService *pp = [[PayPalPaymentService alloc] init];
    StripePaymentService *sp = [[StripePaymentService alloc] init];
    AmazonPaymentService *ap = [[AmazonPaymentService alloc] init];
    
    switch ([num intValue]) {
      case 1:
        [paymentGateway setDelegate:pp];
        break;
      case 2:
        [paymentGateway setDelegate:sp];
        break;
      case 3:
        [paymentGateway setDelegate:ap];
        break;
      default:
        break;
    }
    
    [paymentGateway processPaymentAmount:dollarValue];
    
    
     
  }
  return 0;
}
