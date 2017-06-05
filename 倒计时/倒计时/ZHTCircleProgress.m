//
//  ZHTCircleProgress.m
//  倒计时
//
//  Created by lizhanpeng on 2017/6/5.
//  Copyright © 2017年 hebccc. All rights reserved.
//

#import "ZHTCircleProgress.h"

@implementation ZHTCircleProgress
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        
        _backlayer = [CAShapeLayer layer];
        _backlayer.fillColor = nil;//[UIColor clearColor].CGColor;
        [self.layer addSublayer:_backlayer];
        UIBezierPath *backpath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x - self.frame.origin.x, self.center.y - self.frame.origin.y) radius:self.frame.size.height/2 startAngle:(0*M_PI) endAngle:(2*M_PI) clockwise:YES];
        _backlayer.path = [backpath CGPath];
        
        _progresslayer = [[CAShapeLayer alloc]init];
        _progresslayer.fillColor = nil;
        [self.layer addSublayer:_progresslayer];
        
        _lab = [[UILabel alloc]initWithFrame:CGRectMake((self.bounds.size.width -100)/2, (self.bounds.size.height - 100)/2, 100, 100)];
        _lab.textAlignment = NSTextAlignmentCenter;
        _lab.font = [UIFont systemFontOfSize:22 weight:0.4];
        [self addSubview:_lab];
        
    }
    return self;
}
/** 懒加载*/
//-(NSInteger)inlineWidth{
//    
//}
//-(UIColor *)strokeColor{
//    
//}
//-(UIColor *)fillColor{
//    
//}
-(void)getstart{
    _backlayer.lineWidth = _inlineWidth;
    _progresslayer.lineWidth = _inlineWidth;
    _backlayer.strokeColor = _Backstrokecolor.CGColor;
    _progresslayer.strokeColor = _strokecolor.CGColor;
    
    _lab.text = [NSString stringWithFormat:@"%ld",_inSumStep];

    _step = _inSumStep;
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerMethod) userInfo:nil repeats:YES];

}
-(void)timerMethod{
    _step = _step-1;

    if (_step==-1) {
        _lab.text = [NSString stringWithFormat:@"%d",0];
        [_timer invalidate];
        
    }else{
        CGFloat percent = (_inSumStep-_step)*(M_PI*2)/_inSumStep;
        UIBezierPath *progressPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x - self.frame.origin.x, self.center.y - self.frame.origin.y) radius:self.frame.size.height/2 startAngle:(-M_PI_2) endAngle:percent-M_PI_2 clockwise:YES];
        _progresslayer.path = [progressPath CGPath];
        _lab.text = [NSString stringWithFormat:@"%ld",_step];
    }

//    (_inSumStep-_step)/_inSumStep =()/(M_PI*2);
    
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
