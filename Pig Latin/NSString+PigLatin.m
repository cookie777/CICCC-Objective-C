#import "NSString+PigLatin.h"
@implementation NSString(PigLatin)
-(NSString *)stringByPigLatinization{
  NSMutableArray<NSString *> *words = (NSMutableArray*)[self componentsSeparatedByString:@" "];
  for (int i = 0; i < [words count]; i++){[words replaceObjectAtIndex:i withObject:[[[NSString stringWithFormat:@"%@%@ay",[words[i] substringWithRange:NSMakeRange(0 + [[words[i] substringWithRange:NSMakeRange(0, ([@[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"] containsObject:[words[i] substringWithRange:NSMakeRange(0, (int)MIN(2, [words[i] length]))]]) ? 2:1)] length], (int)[words[i] length] - [[words[i] substringWithRange:NSMakeRange(0, ([@[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"] containsObject:[words[i] substringWithRange:NSMakeRange(0, (int)MIN(2, [words[i] length]))]]) ? 2:1)] length]) ],[words[i] substringWithRange:NSMakeRange(0, ([@[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"] containsObject:[words[i] substringWithRange:NSMakeRange(0, (int)MIN(2, [words[i] length]))]]) ? 2:1)]] lowercaseString]capitalizedString]];}
  return [words componentsJoinedByString:@" "];
}
@end
