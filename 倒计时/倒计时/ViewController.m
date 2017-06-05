//
//  ViewController.m
//  倒计时
//
//  Created by lizhanpeng on 2017/6/5.
//  Copyright © 2017年 hebccc. All rights reserved.
//

#import "ViewController.h"
#import "ZHTCircleProgress.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZHTCircleProgress *pro = [[ZHTCircleProgress alloc]initWithFrame:CGRectMake(50, 100, 110, 110)];
    pro.inlineWidth = 5;
    pro.inSumStep = 10;
    pro.Backstrokecolor = [UIColor lightGrayColor];
    pro.strokecolor = [UIColor redColor];
    [self.view addSubview:pro];
    __weak ZHTCircleProgress *weakprogressView = pro;
    pro.DoneBlock = ^{
        [weakprogressView removeFromSuperview];
    };
    [pro getstart];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
