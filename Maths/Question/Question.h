//
//  AdditionQuestion.h
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic) NSString* question;
@property (assign, nonatomic) NSInteger answer;
@property (nonatomic) NSDate* startTime;
@property (nonatomic) NSDate* endTime;
- (NSTimeInterval) answerTime;

@property (nonatomic, assign) NSInteger leftValue;
@property (nonatomic, assign) NSInteger rightValue;
- (void)generateQuestion;

@end

NS_ASSUME_NONNULL_END
