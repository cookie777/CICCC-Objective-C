//
//  main.m
//  Lab2
//
//  Created by Takayuki Yamaguchi on 2021-02-23.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    Box *bx1 = [[Box alloc] initWithHeight:7.5 AndWidth:35.7 AndLength:67.1];
    NSLog(@"%@", bx1);
    NSLog(@"\nvolume: %.f", [bx1 calculateVolume]);
    
    
    Box *bx2 = [[Box alloc] initWithHeight:134.5 AndWidth:120.8 AndLength:212.5];
    Box *bx3 = [[Box alloc] initWithHeight:10.5 AndWidth:40.2 AndLength:133.1];
    
    NSLog(@"\nYou can put %d bx1 boxes in bx2.", [bx1 calculateBoxesFitInsideToTheOtherBox: bx2]);
    NSLog(@"\nYou can put %d bx1 boxes in bx3.", [bx1 calculateBoxesFitInsideToTheOtherBox: bx3]);
  }
  return 0;
}
