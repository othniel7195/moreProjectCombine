//
//  UIView+CornerRadius.m
//  CTDestination
//
//  Created by 梁先生 on 15/12/28.
//  Copyright © 2015年 ctrip. All rights reserved.
//

#import "UIView+CornerRadius.h"

@implementation UIView (CornerRadius)

- (void)viewCornerRaidus:(CGFloat)raidus{
    [self viewCornerRaidusType:raidus roundingCorners:UIRectCornerAllCorners];
}

- (void)viewCornerRaidusType:(CGFloat)raidus roundingCorners:(UIRectCorner)corners{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                   byRoundingCorners:corners
                                                         cornerRadii:CGSizeMake(raidus, raidus)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

@end
