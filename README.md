# ZHTCircleProgress
一个简单的倒计时进度条效果

    ZHTCircleProgress *pro = [[ZHTCircleProgress alloc]initWithFrame:CGRectMake(50, 100, 110, 110)];
    pro.inlineWidth = 5;
    pro.inSumStep = 10;
    pro.Backstrokecolor = [UIColor lightGrayColor];
    pro.strokecolor = [UIColor redColor];
    [self.view addSubview:pro];
    __weak ZHTCircleProgress *weakprogressView = pro;
    pro.DoneBlock = ^{
        [weakprogressView removeFromSuperview];
    };//倒计时完成后调用 清除倒计时视图
    [pro getstart];





![image](https://github.com/ZHT521/ZHTCircleProgress/blob/master/%E6%95%88%E6%9E%9C%E5%9B%BE.gif?raw=true)
