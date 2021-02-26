//
//  Contact.m
//  Lab4
//
//  Created by Takayuki Yamaguchi on 2021-02-25.
//

#import "Contact.h"

// private property
@interface Contact()

@end



@implementation Contact{
  //private instance vars
  NSString* _name;
  NSString* _email;
  NSMutableDictionary* _phone;
}

- (instancetype)initWithName: (NSString*) name AndEmail: (NSString*) email AndPhone: (NSMutableDictionary*) phone
{
  if( self = [super init]){
    _name   = name;
    _email  = email;
    _phone  = phone;
  }
  return self;
}

- (NSString *)description
{
  NSString *phoneText = @"";
  for (NSString *key in [self phone]){
    phoneText = [phoneText stringByAppendingFormat:@"%@ : %@\n", key, [self phone][key]];

  }
  
  return [NSString stringWithFormat:@"\nname  : %@\nemail : %@\nphone number\n%@",[self name],[self email],phoneText];
}

@end
