//
//  PaymentDelegate.h
//  Payments
//
//  Created by Takayuki Yamaguchi on 2021-03-02.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>
- (BOOL)canProcessPayment;
- (void)processPaymentAmount:(NSInteger) price;
@end

NS_ASSUME_NONNULL_END
