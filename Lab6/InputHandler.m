//
//  InputHandler.m
//  Lab6
//
//  Created by Takayuki Yamaguchi on 2021-02-27.
//

#import "InputHandler.h"

// private
@interface InputHandler()

@end

@implementation InputHandler{
  
}

+ (NSString *)getInputForPrompt:(NSString *)promptString
{
  // Display prompt
  NSLog(@"%@",promptString);
  
  // Input handler
  // receive input as char []
  char inputChars[255];
  // get first address of char
  char *results = fgets(inputChars, 255, stdin);
  // convert char[] into NSString
  NSString *inputStrings = [NSString stringWithCString: results encoding: NSUTF8StringEncoding];
  NSString *cleanedInputStrings = [inputStrings stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  
  return cleanedInputStrings;
}

@end
