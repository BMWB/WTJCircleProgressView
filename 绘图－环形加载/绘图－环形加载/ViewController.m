//
//  ViewController.m
//  绘图－环形加载
//
//  Created by wtj on 16/6/6.
//  Copyright © 2016年 com.yibei.renrenmeishu. All rights reserved.
//

#import "ViewController.h"
#import "WTJCircle/WTJCircleProgressView.h"
@interface ViewController ()
{

    CGFloat f ;
    WTJCircleProgressView *_progressView;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (_progressView == nil) {
        _progressView = [[WTJCircleProgressView alloc] initWithFrame: CGRectMake( 0, 0, 60, 60)];
        _progressView.center = self.view.center;
    }
    
    [self.view addSubview:_progressView];
}

-(void)progressMth:(NSTimer *)timer{

   
    _progressView.progress = f+ 0.01;
    
    f = f+ 0.01;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(progressMth:) userInfo:nil repeats:YES];

    [timer fire];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
