
//
// colors.m
//

// Do not edit directly, this file was auto-generated.


#import ".h"

@implementation 

+ (UIColor *)color:()colorEnum{
  return [[self values] objectAtIndex:colorEnum];
}

+ (NSArray *)values {
  static NSArray* colorArray;
  static dispatch_once_t onceToken;

  dispatch_once(&onceToken, ^{
    colorArray = @[
[UIColor colorWithRed:0.949f green:0.933f blue:0.910f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.961f blue:0.945f alpha:1.000f],
[UIColor colorWithRed:0.478f green:0.337f blue:0.094f alpha:0.051f],
[UIColor colorWithRed:0.831f green:0.831f blue:0.831f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:0.169f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:0.800f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:0.549f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:0.420f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end