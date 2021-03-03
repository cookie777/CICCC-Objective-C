//
//  PaymentGateway.h
//  Payments
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//

#import <Foundation/Foundation.h>
#import "PaymentDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaymentGateway : NSObject
- (void)processPaymentAmount:(NSInteger) price;
@property (nonatomic, weak) id<PaymentDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
