//
//  UIView+CornerRadius.h
//  CTDestination
//
//  Created by 梁先生 on 15/12/28.
//  Copyright © 2015年 ctrip. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CornerRadius)

- (void)viewCornerRaidus:(CGFloat)raidus;

- (void)viewCornerRaidusType:(CGFloat)raidus roundingCorners:(UIRectCorner)corners;

@end
