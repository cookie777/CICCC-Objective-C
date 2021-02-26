//
//  main.m
//  Lab4
//
//  Created by Takayuki Yamaguchi on 2021-02-25.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    ContactList *contactList = [[ContactList alloc] init];
    
    while (YES) {
      NSString *userInput = [InputCollector inputForPrompt:
                             @"\nWhat would you like to do next?\n\n"
                             "new - Create a new contact\n"
                             "list - List all contacts\n"
                             "show - Show specific contact with ID\n"
                             "quit - Exit Application"
                             ];
      
      if ([userInput isEqual: @"quit"]){break;}
      
      if ([userInput isEqual: @"new"]){
        NSString *userName = [InputCollector inputForPrompt:@"Input your full name: "];
        NSString *email    = [InputCollector inputForPrompt:@"Input your email address: "];
        
        Contact *newContact = [[Contact alloc] initWithName:userName AndEmail:email];
        [contactList addContact:newContact];
        continue;
      }

      if ([userInput isEqual: @"list"]){
        [contactList displayAllContact];
        continue;
      }
      
      if ([userInput isEqual: @"show"]){
        NSString *id = [InputCollector inputForPrompt:@"Input the id of the contact: "];
        continue;
      }

    }
    

  }
  return 0;
}
