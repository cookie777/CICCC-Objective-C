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
    InputCollector *inputCollector = [InputCollector new];
    
    while (YES) {
      NSString *userInput = [InputCollector inputForPrompt:
                             @"\nWhat would you like to do next?\n\n"
                             "new - Create a new contact\n"
                             "list - List all contacts\n"
                             "show - Show specific contact with ID\n"
                             "history - Show history of command\n"
                             "quit - Exit Application"
                             ];
      [inputCollector addToHistory:userInput];
      
      if ([userInput isEqual: @"quit"]){break;}
      
      if ([userInput isEqual: @"new"]){
        NSString *userName = [InputCollector inputForPrompt:@"Input your full name: "];
        NSString *email    = [InputCollector inputForPrompt:@"Input your email address: "];
        NSString *phoneKey    = [InputCollector inputForPrompt:@"Input your phone type: "];
        NSString *phoneValue    = [InputCollector inputForPrompt:@"Input your phone number: "];
        
        Contact *newContact = [[Contact alloc] initWithName:userName AndEmail:email AndPhone: (NSMutableDictionary*)@{phoneKey:phoneValue}];
        [contactList addContact:newContact];
        continue;
      }

      if ([userInput isEqual: @"list"]){
        [contactList displayAllContact];
        continue;
      }
      
      if ([userInput isEqual: @"show"]){
        NSString *inputIndex  = [InputCollector inputForPrompt:@"Contact id: "];
        NSNumber *index = [[[NSNumberFormatter alloc] init] numberFromString: inputIndex];
        [contactList displayContactByIndex: index];
        continue;
      }
      
      if ([userInput isEqual: @"history"]){
        [inputCollector displayHistory];
        continue;
      }

    }
    

  }
  return 0;
}
