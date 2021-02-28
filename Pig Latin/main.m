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
    NSLog(@"Alekay Ipschay :%@",[@"Kale Chips" stringByPigLatinization]);
    NSLog(@"Yay Chay :%@",[@"y Ch" stringByPigLatinization]);
    //    int (^howMany)(int, int) = ^(int a, int b){return a + b;};
  }
  return 0;
}

