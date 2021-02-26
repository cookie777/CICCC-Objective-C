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

- (instancetype)init
{
  if (self = [super init]){
    
    NSMutableDictionary *dict0 = [NSMutableDictionary new];
    dict0[@"personal"] = @"650-624-7146";
    NSMutableDictionary *dict1 = [NSMutableDictionary new];
    dict1[@"personal"] = @"650-624-7146";
    dict1[@"company"] = @"318-965-5315";
    NSMutableDictionary *dict2 = [NSMutableDictionary new];
    dict2[@"company"] = @"509-978-3883";
    NSMutableDictionary *dict3 = [NSMutableDictionary new];
    dict3[@"personal"] = @"232-118-3201";
    dict3[@"personal-sub"] = @"724-508-6418";
    dict3[@"company"] = @"323-023-0832";

    _contactList = [NSMutableArray arrayWithObjects:
                    [[Contact alloc] initWithName:@"Lura Lesch" AndEmail:@"pberge@arabtabs.com" AndPhone: dict0],
                          [[Contact alloc] initWithName:@"Patrick R. Pastor" AndEmail:@"PatrickRPastor@teleworm.us" AndPhone:dict1],
                          [[Contact alloc] initWithName:@"Andrea A. Lugo" AndEmail:@"AndreaALugo@dayrep.com" AndPhone:dict2],
                          [[Contact alloc] initWithName:@"Christy F. Lima" AndEmail:@"ChristyFLima@armyspy.com" AndPhone:dict3],
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


- (void)displayContactByIndex: (NSNumber*) index
{
  if (index == nil ||
      [index intValue] < 0 ||
      [index intValue] > [[self contactList] count] - 1 )
  {
    NSLog(@"not found");
  }else{
    NSLog(@"%@", [[self contactList] objectAtIndex: [index intValue]]);
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
