//
//  ScoreKeeper.h
//  Maths
//
//  Created by Takayuki Yamaguchi on 2021-02-24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (assign, atomic) NSInteger rightGuesses;
@property (assign, atomic) NSInteger wrongGuesses;
- (NSString *) generateScore;

@end

NS_ASSUME_NONNULL_END
