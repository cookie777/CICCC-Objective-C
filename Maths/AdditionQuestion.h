//
//  AdditionQuestion.h
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property (atomic) NSString* question;
@property (assign, atomic) NSInteger answer;


@end

NS_ASSUME_NONNULL_END
