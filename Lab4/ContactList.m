//
//  ContactList.m
//  Lab4
//
//  Created by Takayuki Yamaguchi on 2021-02-25.
//

#import "ContactList.h"

//private
@interface ContactList()
@property (nonatomic) NSMutableArray* contactList;
@end

@implementation ContactList

//static NSMutableArray* _sampleContactList;
//+ (NSMutableArray*)sampleContactList{return _sampleContactList;}
//+ (void)setSampleContactList:(NSMutableArray *)sampleContactList{_sampleContactList = sampleContactList;}

- (instancetype)init
{
  if (self = [super init]){
    _contactList = [NSMutableArray arrayWithObjects:
                          [[Contact alloc] initWithName:@"Lura Lesch" AndEmail:@"pberge@arabtabs.com"],
                          [[Contact alloc] initWithName:@"Patrick R. Pastor" AndEmail:@"PatrickRPastor@teleworm.us"],
                          [[Contact alloc] initWithName:@"Andrea A. Lugo" AndEmail:@"AndreaALugo@dayrep.com"],
                          [[Contact alloc] initWithName:@"Christy F. Lima" AndEmail:@"ChristyFLima@armyspy.com"],
                          nil
                          ];
  }
  return self;
}

-(void)addContact:(Contact *)newContact
{
  [[self contactList] insertObject: newContact atIndex: [[self contactList] count]];
}

- (void)displayAllContact
{
  for (int i = 0; i < [[self contactList] count]; i++){
    NSLog(@"%d: %@",i, [[self contactList][i] name]);
  }
}



// override
-(NSString *)description
{
  NSString *displayDescription = [NSString new];
  
  for (Contact* c  in [self contactList]){
    displayDescription = [displayDescription stringByAppendingFormat:@"\n\n  %@", [c description]];
  }
  return displayDescription;
  
}

@end
