# ZHTCircleProgress
一个简单的倒计时进度条效果

ZHTCircleProgress *pro = [[ZHTCircleProgress alloc]initWithFrame:CGRectMake(50, 100, 110, 110)];
    pro.inlineWidth = 5;
    pro.inSumStep = 10;
    pro.Backstrokecolor = [UIColor lightGrayColor];
    pro.strokecolor = [UIColor redColor];
    [self.view addSubview:pro];
    [pro getstart];
