//
//  InputHandler.h
//  Lab6
//
//  Created by Takayuki Yamaguchi on 2021-02-27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject
+ (NSString *)getInputForPrompt:(NSString *)promptString;
@end

NS_ASSUME_NONNULL_END
