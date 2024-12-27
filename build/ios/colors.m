
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
[UIColor colorWithRed:0.929f green:0.486f blue:0.486f alpha:1.000f],
[UIColor colorWithRed:0.890f green:0.365f blue:0.365f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.898f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.800f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.980f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.925f green:0.855f blue:0.714f alpha:1.000f],
[UIColor colorWithRed:0.788f green:0.643f blue:0.349f alpha:1.000f],
[UIColor colorWithRed:0.698f green:0.537f blue:0.212f alpha:1.000f],
[UIColor colorWithRed:0.988f green:0.965f blue:0.918f alpha:1.000f],
[UIColor colorWithRed:0.678f green:0.137f blue:0.137f alpha:1.000f],
[UIColor colorWithRed:0.588f green:0.090f blue:0.090f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.922f blue:0.922f alpha:1.000f],
[UIColor colorWithRed:0.055f green:0.600f blue:0.498f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.502f blue:0.408f alpha:1.000f],
[UIColor colorWithRed:0.941f green:0.980f blue:0.973f alpha:1.000f],
[UIColor colorWithRed:0.929f green:0.486f blue:0.486f alpha:1.000f],
[UIColor colorWithRed:0.890f green:0.365f blue:0.365f alpha:1.000f],
[UIColor colorWithRed:0.831f green:0.831f blue:0.831f alpha:1.000f],
[UIColor colorWithRed:0.722f green:0.722f blue:0.722f alpha:1.000f],
[UIColor colorWithRed:0.890f green:0.365f blue:0.365f alpha:1.000f],
[UIColor colorWithRed:0.820f green:0.263f blue:0.263f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.910f green:0.718f blue:0.153f alpha:1.000f],
[UIColor colorWithRed:0.851f green:0.663f blue:0.110f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.976f blue:0.898f alpha:1.000f],
[UIColor colorWithRed:0.659f green:0.416f blue:0.671f alpha:1.000f],
[UIColor colorWithRed:0.616f green:0.341f blue:0.631f alpha:1.000f],
[UIColor colorWithRed:0.988f green:0.949f blue:0.988f alpha:1.000f],
[UIColor colorWithRed:0.055f green:0.600f blue:0.498f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.502f blue:0.408f alpha:1.000f],
[UIColor colorWithRed:0.941f green:0.980f blue:0.973f alpha:1.000f],
[UIColor colorWithRed:0.227f green:0.706f blue:0.761f alpha:1.000f],
[UIColor colorWithRed:0.075f green:0.608f blue:0.671f alpha:1.000f],
[UIColor colorWithRed:0.929f green:0.976f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.357f green:0.541f blue:0.788f alpha:1.000f],
[UIColor colorWithRed:0.263f green:0.467f blue:0.749f alpha:1.000f],
[UIColor colorWithRed:0.949f green:0.973f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:0.800f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:0.549f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:0.420f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.588f green:0.420f blue:0.078f alpha:1.000f],
[UIColor colorWithRed:0.890f green:0.365f blue:0.365f alpha:1.000f],
[UIColor colorWithRed:0.898f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.478f green:0.337f blue:0.094f alpha:1.000f],
[UIColor colorWithRed:0.478f green:0.337f blue:0.094f alpha:0.702f],
[UIColor colorWithRed:0.678f green:0.137f blue:0.137f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.502f blue:0.408f alpha:1.000f],
[UIColor colorWithRed:0.890f green:0.365f blue:0.365f alpha:1.000f],
[UIColor colorWithRed:0.780f green:0.600f blue:0.071f alpha:1.000f],
[UIColor colorWithRed:0.616f green:0.341f blue:0.631f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.502f blue:0.408f alpha:1.000f],
[UIColor colorWithRed:0.075f green:0.608f blue:0.671f alpha:1.000f],
[UIColor colorWithRed:0.263f green:0.467f blue:0.749f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:0.741f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:0.420f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:0.278f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.698f green:0.537f blue:0.212f alpha:1.000f],
[UIColor colorWithRed:0.929f green:0.486f blue:0.486f alpha:1.000f],
[UIColor colorWithRed:0.898f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.478f green:0.337f blue:0.094f alpha:0.929f],
[UIColor colorWithRed:0.478f green:0.337f blue:0.094f alpha:0.502f],
[UIColor colorWithRed:0.749f green:0.196f blue:0.196f alpha:1.000f],
[UIColor colorWithRed:0.055f green:0.600f blue:0.498f alpha:1.000f],
[UIColor colorWithRed:0.890f green:0.365f blue:0.365f alpha:1.000f],
[UIColor colorWithRed:0.910f green:0.718f blue:0.153f alpha:1.000f],
[UIColor colorWithRed:0.659f green:0.416f blue:0.671f alpha:1.000f],
[UIColor colorWithRed:0.055f green:0.600f blue:0.498f alpha:1.000f],
[UIColor colorWithRed:0.227f green:0.706f blue:0.761f alpha:1.000f],
[UIColor colorWithRed:0.357f green:0.541f blue:0.788f alpha:1.000f],
[UIColor colorWithRed:0.478f green:0.337f blue:0.094f alpha:0.502f],
[UIColor colorWithRed:0.478f green:0.337f blue:0.094f alpha:0.212f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:0.059f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.906f blue:0.796f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.831f blue:0.831f alpha:1.000f],
[UIColor colorWithRed:0.898f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.831f blue:0.831f alpha:1.000f],
[UIColor colorWithRed:0.765f green:0.898f blue:0.875f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.831f blue:0.831f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.855f blue:0.514f alpha:1.000f],
[UIColor colorWithRed:0.918f green:0.835f blue:0.922f alpha:1.000f],
[UIColor colorWithRed:0.765f green:0.898f blue:0.875f alpha:1.000f],
[UIColor colorWithRed:0.765f green:0.906f blue:0.922f alpha:1.000f],
[UIColor colorWithRed:0.796f green:0.863f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.616f green:0.851f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.839f blue:0.000f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end