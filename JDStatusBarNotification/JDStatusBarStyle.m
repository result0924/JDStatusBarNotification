//
//  JDStatusBarStyle.m
//  JDStatusBarNotificationExample
//
//  Created by Markus on 04.12.13.
//  Copyright (c) 2013 Markus. All rights reserved.
//

#import "JDStatusBarStyle.h"

NSString *const JDStatusBarStyleError   = @"JDStatusBarStyleError";
NSString *const JDStatusBarStyleWarning = @"JDStatusBarStyleWarning";
NSString *const JDStatusBarStyleSuccess = @"JDStatusBarStyleSuccess";
NSString *const JDStatusBarStyleMatrix  = @"JDStatusBarStyleMatrix";
NSString *const JDStatusBarStyleDefault = @"JDStatusBarStyleDefault";
NSString *const JDStatusBarStyleDark    = @"JDStatusBarStyleDark";
NSString *const H2StatusBarStyleSyncing = @"H2StatusBarStyleSyncing";
NSString *const H2StatusBarStyleSyncSucceed = @"H2StatusBarStyleSyncSucceed";
NSString *const H2StatusBarStyleSyncFailed = @"H2StatusBarStyleSyncFailed";

@implementation JDStatusBarStyle

- (instancetype)copyWithZone:(NSZone*)zone;
{
  JDStatusBarStyle *style = [[[self class] allocWithZone:zone] init];
  style.barColor = self.barColor;
  style.textColor = self.textColor;
  style.textShadow = self.textShadow;
  style.font = self.font;
  style.textVerticalPositionAdjustment = self.textVerticalPositionAdjustment;
  style.animationType = self.animationType;
  style.progressBarColor = self.progressBarColor;
  style.progressBarHeight = self.progressBarHeight;
  style.progressBarPosition = self.progressBarPosition;
  style.iconImage = self.iconImage;
  style.styleName = self.styleName;
  return style;
}

+ (NSArray*)allDefaultStyleIdentifier;
{
  return @[JDStatusBarStyleError, JDStatusBarStyleWarning,
           JDStatusBarStyleSuccess, JDStatusBarStyleMatrix,
           JDStatusBarStyleDark,
           H2StatusBarStyleSyncing, H2StatusBarStyleSyncSucceed, H2StatusBarStyleSyncFailed];
}

+ (JDStatusBarStyle*)defaultStyleWithName:(NSString*)styleName;
{
  // setup default style
  JDStatusBarStyle *style = [[JDStatusBarStyle alloc] init];
  style.barColor = [UIColor whiteColor];
  style.progressBarColor = [UIColor greenColor];
  style.progressBarHeight = 1.0;
  style.progressBarPosition = JDStatusBarProgressBarPositionBottom;
  style.textColor = [UIColor grayColor];
  style.font = [UIFont systemFontOfSize:12.0];
  style.animationType = JDStatusBarAnimationTypeMove;
  style.styleName = styleName;

  // JDStatusBarStyleDefault
  if ([styleName isEqualToString:JDStatusBarStyleDefault]) {
    return style;
  }

  // JDStatusBarStyleError
  else if ([styleName isEqualToString:JDStatusBarStyleError]) {
    style.barColor = [UIColor colorWithRed:0.588 green:0.118 blue:0.000 alpha:1.000];
    style.textColor = [UIColor whiteColor];
    style.progressBarColor = [UIColor redColor];
    style.progressBarHeight = 2.0;
    return style;
  }

  // JDStatusBarStyleWarning
  else if ([styleName isEqualToString:JDStatusBarStyleWarning]) {
    style.barColor = [UIColor colorWithRed:0.900 green:0.734 blue:0.034 alpha:1.000];
    style.textColor = [UIColor darkGrayColor];
    style.progressBarColor = style.textColor;
    return style;
  }

  // JDStatusBarStyleSuccess
  else if ([styleName isEqualToString:JDStatusBarStyleSuccess]) {
    style.barColor = [UIColor colorWithRed:0.588 green:0.797 blue:0.000 alpha:1.000];
    style.textColor = [UIColor whiteColor];
    style.progressBarColor = [UIColor colorWithRed:0.106 green:0.594 blue:0.319 alpha:1.000];
    style.progressBarHeight = 1.0+1.0/[[UIScreen mainScreen] scale];
    return style;
  }

  // JDStatusBarStyleDark
  else if ([styleName isEqualToString:JDStatusBarStyleDark]) {
    style.barColor = [UIColor colorWithRed:0.050 green:0.078 blue:0.120 alpha:1.000];
    style.textColor = [UIColor colorWithWhite:0.95 alpha:1.0];
    style.progressBarHeight = 1.0+1.0/[[UIScreen mainScreen] scale];
    return style;
  }

  // JDStatusBarStyleMatrix
  else if ([styleName isEqualToString:JDStatusBarStyleMatrix]) {
    style.barColor = [UIColor blackColor];
    style.textColor = [UIColor greenColor];
    style.font = [UIFont fontWithName:@"Courier-Bold" size:14.0];
    style.progressBarColor = [UIColor greenColor];
    style.progressBarHeight = 2.0;
    return style;
  }

  else if ([styleName isEqualToString:H2StatusBarStyleSyncing]) {
    style.barColor = [UIColor colorWithRed:92.0/255.0 green:213.0/255.0 blue:188.0/255.0 alpha:1.0];
    style.textColor = [UIColor whiteColor];
    style.font = [UIFont systemFontOfSize:12 weight:UIFontWeightMedium];
    style.textVerticalPositionAdjustment = -1.0;
    style.iconImage = [UIImage imageNamed:@"icSync"];
    return style;
  }

  else if ([styleName isEqualToString:H2StatusBarStyleSyncSucceed]) {
    style.barColor = [UIColor colorWithRed:92.0/255.0 green:213.0/255.0 blue:188.0/255.0 alpha:1.0];
    style.textColor = [UIColor whiteColor];
    style.font = [UIFont systemFontOfSize:12 weight:UIFontWeightMedium];
    style.textVerticalPositionAdjustment = -1.0;
    style.iconImage = [UIImage imageNamed:@"icSucceed"];
    return style;
  }

  else if ([styleName isEqualToString:H2StatusBarStyleSyncFailed]) {
    style.barColor = [UIColor colorWithRed:252.0/255.0 green:180.0/255.0 blue:93.0/255.0 alpha:1.0];
    style.textColor = [UIColor whiteColor];
    style.font = [UIFont systemFontOfSize:12 weight:UIFontWeightRegular];
    style.textVerticalPositionAdjustment = -1.0;
    style.iconImage = [UIImage imageNamed:@"icFailsyncing"];
    return style;
  }
  return nil;
}

@end
