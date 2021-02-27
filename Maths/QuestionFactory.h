//
//  QuestionFactory.h
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-26.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject
- (Question*)generateRandomQuestion;
@end

NS_ASSUME_NONNULL_END
