//
//  InputCollector.h
//  Lab4
//
//  Created by Takayuki Yamaguchi on 2021-02-25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject

@property (nonatomic)  NSMutableArray*  history;
+ (NSString *)inputForPrompt:(NSString *)promptString;
- (void)addToHistory: (NSString*) command;
- (void)displayHistory;


@end

NS_ASSUME_NONNULL_END
