//
//  PaypalPaymentService.h
//  Payments
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//

#import <Foundation/Foundation.h>
#import "PaymentDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface PayPalPaymentService : NSObject<PaymentDelegate>

@end

NS_ASSUME_NONNULL_END
