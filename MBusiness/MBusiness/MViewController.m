//
//  MViewController.m
//  MBusiness
//
//  Created by zhao.feng on 2016/12/30.
//  Copyright © 2016年 com.zhaofeng. All rights reserved.
//

#import "MViewController.h"
#import <UIView+CTExtensions.h>
#import <NSArray+LineFunExt.h>

@interface MViewController ()
@property (nonatomic, strong)UIButton *btn;
@property (nonatomic, strong)UIImageView *showImage;
@property (nonatomic, strong)NSArray *imgs;
@property (nonatomic, assign)int index;
@end

@implementation MViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.index = 0;
    
    NSArray *arr = @[@"ad1",@"icon_57",@"icon"];
    
    self.imgs = [arr mapSelectorCondition:^id(id item, NSUInteger idx) {
        UIImage *i = [UIImage imageWithContentsOfFile:[self bundlePath:item]];
        NSLog(@"--item__ %@_%@",item,i);
        return i;
    } mapNil:NO];
    
    NSLog(@"imgs:%@",self.imgs);
    
    self.showImage = [[UIImageView alloc] initWithFrame:self.view.bounds];
    self.showImage.image = self.imgs[self.index];
    
    [self.view addSubview:self.showImage];
    
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(0, self.view.viewHeight-200, 100, 30)];
    self.btn.backgroundColor = [UIColor redColor];
    
    [self.btn addTarget:self action:@selector(changeImage) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.btn];
    
}

-(NSString *)bundlePath:(NSString *)name
{
    
    NSString * path = [[NSBundle mainBundle] pathForResource:@"MBusiness" ofType:@"bundle"];
    
    return [path stringByAppendingPathComponent:name];
    
}

- (void)changeImage
{
    if (self.index == 0) {
        self.index = 1;
    }
    else
    {
        self.index = 0;
    }
    
    self.showImage.image = self.imgs[self.index];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
