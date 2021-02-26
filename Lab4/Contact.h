//
//  Contact.h
//  Lab4
//
//  Created by Takayuki Yamaguchi on 2021-02-25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject
- (instancetype)initWithName: (NSString*) name AndEmail: (NSString*) email;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *email;
@end

NS_ASSUME_NONNULL_END
