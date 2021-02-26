//
//  ContactList.h
//  Lab4
//
//  Created by Takayuki Yamaguchi on 2021-02-25.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN
// public
@interface ContactList : NSObject

- (instancetype)init;
- (void)addContact:(Contact *)newContact;
- (void)displayAllContact;
- (void)displayContactByIndex: (NSNumber*) index;

@end

NS_ASSUME_NONNULL_END
