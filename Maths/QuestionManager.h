//
//  QuestionManager.h
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray* questions;
- (NSString* )timeOutput;

@end

NS_ASSUME_NONNULL_END
