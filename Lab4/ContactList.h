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
// set static property. This require manual getter and setter.
//@property (class, nonatomic) NSMutableArray* sampleContactList;

- (instancetype)init;
- (void)addContact:(Contact *)newContact;
- (void)displayAllContact;
@end

NS_ASSUME_NONNULL_END
