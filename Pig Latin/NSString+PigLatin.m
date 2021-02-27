//
//  NSString+PigLatin.m
//  Pig Latin
//
//  Created by Takayuki Yamaguchi on 2021-02-26.
//

#import "NSString+PigLatin.h"

@implementation NSString(PigLatin)
-(NSString *)stringByPigLatinization
{
  NSMutableString *str = self;
  NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"];
//  [str ]
//  return [self ]
}
@end
