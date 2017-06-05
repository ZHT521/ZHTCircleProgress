//
//  ZHTCircleProgress.h
//  倒计时
//
//  Created by lizhanpeng on 2017/6/5.
//  Copyright © 2017年 hebccc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHTCircleProgress : UIView
@property(nonatomic,assign)NSInteger inSumStep;//总倒计时秒数
@property(nonatomic,assign)NSInteger step;
@property(nonatomic,assign)NSInteger inlineWidth;
@property(nonatomic,strong)UIColor *Backstrokecolor;//圆环背景的颜色
@property(nonatomic,strong)UIColor *strokecolor;//圆环进度的颜色
@property(nonatomic,strong)CAShapeLayer *backlayer;
@property(nonatomic,strong)CAShapeLayer *progresslayer;
@property(nonatomic,strong)NSTimer *timer;

@property(nonatomic,strong)UILabel *lab;//

-(void)getstart;
@end
