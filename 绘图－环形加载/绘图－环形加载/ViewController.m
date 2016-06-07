//
//  ViewController.m
//  绘图－环形加载
//
//  Created by wtj on 16/6/6.
//  Copyright © 2016年 com.yibei.renrenmeishu. All rights reserved.
//

#import "ViewController.h"
#import "WTJCircle/WTJCircleProgressView.h"
#import "CABasicAnimationView.h"
#import "CABasicAnimation+WTJCATranslation.h"
@interface ViewController ()
{
    
    CGFloat f ;
    WTJCircleProgressView *_progressView;
    CABasicAnimationView *_translationView;
    
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
    
    if (!_translationView) {
        _translationView = [[CABasicAnimationView alloc]initWithFrame:CGRectMake(0, 100, 50, 50)];
        [self.view addSubview:_translationView];
    }
}

-(void)progressMth:(NSTimer *)timer{
    
    
    _progressView.progress = f+ 0.01;
    
    f = f+ 0.01;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //环形加载动画
    //    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(progressMth:) userInfo:nil repeats:YES];
    //
    //    [timer fire];
    
    //平移动画
    //    [self baseTranslationAnimation];
    //旋转动画
    //    [self baseRoundAnimation];
    //    [self baseScaleAnimation];
//    [self baseSpringAnimation];
    
    
    CABasicAnimation *animation = [CABasicAnimation WTJPathAnimation];
    
    [_translationView.layer addAnimation:animation forKey:WTJPathAnimationkey];
}

-(void)baseTranslationAnimation{
    
    CABasicAnimation *animation = [CABasicAnimation WTJTranslationAnimation:self.view.frame.size.width-5 duration:3];
    
    [_translationView.layer addAnimation:animation forKey:WTJTranslationAnimationkey];
}


-(void)baseRoundAnimation{
    
    CABasicAnimation *animation = [CABasicAnimation WTJRotationAnimationDuration:5];
    
    [_translationView.layer addAnimation:animation forKey:WTJRotationAnimationkey];
}

-(void)baseScaleAnimation{
    CABasicAnimation *animation = [CABasicAnimation WTJScaleAnimationScaling:0.5 Duration:5];
    
    [_translationView.layer addAnimation:animation forKey:WTJScaleAnimationkey];
    
}

-(void)baseSpringAnimation{
    CABasicAnimation *animation = [CABasicAnimation WTJSpringAnimationSpring:0.2 Duration:1];
    
    [_translationView.layer addAnimation:animation forKey:WTJSpringAnimationkey];
    
}


@end
