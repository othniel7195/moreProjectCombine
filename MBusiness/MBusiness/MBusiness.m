//
//  MBusiness.m
//  MBusiness
//
//  Created by zhao.feng on 2016/12/30.
//  Copyright © 2016年 com.zhaofeng. All rights reserved.
//

#import "MBusiness.h"
#import "MViewController.h"
@implementation MBusiness
+ (void)callMyBusiness:(UIViewController *)conView
{
    MViewController *mv = [[MViewController alloc] init];
    [conView presentViewController:mv animated:YES completion:nil];
}
@end
