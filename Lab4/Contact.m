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
}

- (instancetype)initWithName: (NSString*) name AndEmail: (NSString*) email
{
  if( self = [super init]){
    _name   = name;
    _email  = email;
  }
  return self;
}

- (NSString *)description
{
  return [NSString stringWithFormat:@"\nname  : %@\nemail : %@",[self name],[self email]];
}

@end
