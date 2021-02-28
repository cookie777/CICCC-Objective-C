//
//  NSString+PigLatin.m
//  Pig Latin
//
//  Created by Takayuki Yamaguchi on 2021-02-26.
//

#import "NSString+PigLatin.h"

@implementation NSString(PigLatin)

// ‘Kale Chips' -> ‘Alekay Ipschay'
-(NSString *)stringByPigLatinization
{

  NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"];
  NSMutableArray<NSString *> *words;
  
  //tokenization
  words =  (NSMutableArray*)[self componentsSeparatedByString:@" "];
  for (int i = 0; i < [words count]; i++){
    // care about the 1 letter word.
    int minLen = (int)MIN(2, [words[i] length]);
    // look first two(one) lettr
    NSString* moveLetter = [words[i] substringWithRange:NSMakeRange(0, minLen)];
    // if it's in clusters, the cut size will be 2
    int len = ([clusters containsObject:moveLetter]) ? 2:1;
    // make the word lowercase
    words[i] = [words[i] lowercaseString];
    // cut the first two(one) letter
    moveLetter = [words[i] substringWithRange:NSMakeRange(0, len)];
    // create top letters
    NSString* topLetter = [words[i] substringWithRange:NSMakeRange(0 + len, (int)[words[i] length] - len) ];
    // combine all word first + moved + "ay"
    NSString* combinedWord = [NSString stringWithFormat:@"%@%@ay",topLetter,moveLetter];
    // capitalize
    combinedWord = [combinedWord capitalizedString];
    // update word
    [words replaceObjectAtIndex:i withObject:combinedWord];
  }

  return [words componentsJoinedByString:@" "];
}
@end
