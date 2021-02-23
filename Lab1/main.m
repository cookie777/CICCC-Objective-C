//
//  main.m
//  Lab1
//
//  Created by Takayuki Yamaguchi on 2021-02-22.
//

#import <Foundation/Foundation.h>

// prompts the message and takes user input from the command line (C) and returns as NSString
NSString *
getUserInput(int maxLength, NSString *prompt) {
  if (maxLength < 1) {
    maxLength = 255;
  }
  NSLog(@"%@ ", prompt);
  char inputChars[maxLength]; // create a char array of size maxLength
  char *result = fgets(inputChars, maxLength, stdin);
  if (result != NULL) {
    // 1. initialize NSString from c-string (char array)
    //  c-string -> NSString
    NSString *objCString = [NSString stringWithUTF8String:inputChars]; // NSString.stringWithUTF8String(inputChars);
    // 2. trim the input (remove all whitespaces)
    // what kind of letters do you want to trim? -> " " and "\n"
    NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    // trim the string by the target letters.
    NSString *trimmedInput = [objCString stringByTrimmingCharactersInSet: whitespaces];
    return trimmedInput;
  }
  return NULL;
}

// main is the starting point of the program
// C, Objective-C
// C String vs NSString
int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    while (YES) {
      
      NSString *strInput = getUserInput(255, @"\nEnter your String ('q' to quit): ");
      if ([strInput isEqualToString:@"q"]) { break; }
      
      while (YES) {
        
        NSString *option = getUserInput(10, @"\nChoose one of the following options:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. Word Count\n8. Remove Punctuations\n9. Done\n");
        
        // make all uppercase
        if ([option isEqualToString:@"1"]) {
          NSString *uppercaseString = [strInput uppercaseString];
          NSLog(@"%@", uppercaseString);
          
          // make all lowercase
        } else if ([option isEqualToString:@"2"]) {
          NSString *lowercaseString = [strInput lowercaseString];
          NSLog(@"%@", lowercaseString);
          
          // Numberize
        } else if ([option isEqualToString:@"3"]) {
          NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:strInput];
          NSCharacterSet *numSet = [NSCharacterSet decimalDigitCharacterSet];
          
          if ([numSet isSupersetOfSet:charSet] && [strInput length] > 0){
            NSLog(@"%@", strInput);
          }else{
            NSLog(@"This is not Integer");
          }
          // This doesn't solve 0000 or 000012
          
          // add extra letters "", eh?""
        } else if ([option isEqualToString:@"4"]) {
          NSString *str = [strInput stringByAppendingString: @", eh?"];
          NSLog(@"%@", str);
          
          // reponde to ! and ?
        } else if ([option isEqualToString:@"5"]) {
          NSString *lastChar = [strInput substringFromIndex:([strInput length] - 1 )];
          if ([lastChar isEqual: @"?"]){
            NSLog(@"I don't know 🤥");
          }else if ([lastChar isEqual: @"!"]){
            NSLog(@"Whoa, calm down!🤪");
          }
          
          // replace space " " to "-"
        } else if ([option isEqualToString:@"6"]) {
          NSString *replacedString = [strInput stringByReplacingOccurrencesOfString:@" " withString:@"-"];
          NSLog(@"%@", replacedString);
          
          // word count
        } else if ([option isEqualToString:@"7"]) {
          
          NSArray *words = [strInput componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
          NSLog(@"%d",(int)[words count]);

          // punctuation removal
        } else if ([option isEqualToString:@"8"]) {
          
          NSArray *cleanArray = [strInput componentsSeparatedByCharactersInSet: [NSCharacterSet punctuationCharacterSet]];
          NSString *cleanString = [cleanArray componentsJoinedByString:@""];
          NSLog(@"%@",cleanString);
          

        } else if (option == nil || [option isEqualToString:@"9"]) {
          NSLog(@"Next String!");
          break;
        } else {
          NSLog(@"Not available.");
        }
      }
    }
    // This is how string is defined under the hood
    // - "a sequence of characters that ends with the null character '\0'
    //    char *str = "Hello";
    //    char str1[6]; // str1 stores the memory address of 'H'
    //    str1[0] = 'H';
    //    str1[1] = 'e';
    //    str1[2] = 'l';
    //    str1[3] = 'l';
    //    str1[4] = 'o';
    //    str1[5] = '\0';
  }
  return 0;
}


