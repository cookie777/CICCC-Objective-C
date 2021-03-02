//
//  InputHandler.h
//  PizzaRestaurant
//
//  Created by Takayuki Yamaguchi on 2021-03-01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject
+ (NSString *)getInputForPrompt:(NSString *)promptString;
@end

NS_ASSUME_NONNULL_END
