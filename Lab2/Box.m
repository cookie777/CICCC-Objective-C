//
//  Box.m
//  Lab2
//
//  Created by Takayuki Yamaguchi on 2021-02-23.
//

#import "Box.h"

@implementation Box{
  // private
}

- (instancetype)initWithHeight:(float) height AndWidth:(float) width AndLength:(float) length;
{
  self = [super init];
  [self setHeight : height];
  [self setWidth  : width];
  [self setLength : length];
  return self;
}

- (float)calculateVolume
{
  return [self height]*[self width]*[self length];
}

- (int)calculateBoxesFitInsideToTheOtherBox: (Box*) box
{
  // caring physically fitting
//  int hRatio = floor([box height] / [self height]);
//  int wRatio = floor([box width]  / [self width]);
//  int lRatio = floor([box length] / [self length]);
//  return hRatio*wRatio*lRatio;
  
  return floor([box calculateVolume]/[self calculateVolume]);
}

- (NSString *)description
{
  return [NSString stringWithFormat:@"\nheight: %f\nwidth: %f\nlength: %f", [self height],[self width],[self length]];
}

@end
