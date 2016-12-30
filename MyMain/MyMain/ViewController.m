//
//  ViewController.m
//  MyMain
//
//  Created by zhao.feng on 2016/12/30.
//  Copyright © 2016年 com.zhaofeng. All rights reserved.
//

#import "ViewController.h"
#import <MBusiness.h>

@interface ViewController ()
@property (nonatomic, strong)UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, 200, 30)];
    self.btn.backgroundColor = [UIColor yellowColor];
    [self.btn setTitle:@"多项目联合" forState:UIControlStateNormal];
    [self.btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [self.view addSubview:self.btn];
    
    [self.btn addTarget:self action:@selector(changeToOtherPg) forControlEvents:UIControlEventTouchUpInside];
}

- (void)changeToOtherPg
{
    [MBusiness callMyBusiness:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
