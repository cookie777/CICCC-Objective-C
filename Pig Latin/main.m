//
//  main.m
//  Pig Latin
//
//  Created by Takayuki Yamaguchi on 2021-02-26.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // ‘Kale Chips' -> ‘Alekay Ipschay'.
    NSString *sampleText = @"Kale Ch";
    NSLog(@"%@",[sampleText stringByPigLatinization]);
  }
  return 0;
}
