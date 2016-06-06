//
//  WTJCircleProgressView.m
//  绘图－环形加载
//
//  Created by wtj on 16/6/6.
//  Copyright © 2016年 com.yibei.renrenmeishu. All rights reserved.
//

#import "WTJCircleProgressView.h"
#import "UIBezierPath+WTJBezierPath.h"
#define kDegreeToRadian(x) (M_PI/180.0 * (x))
@interface WTJCircleProgressView()
{
    ///进度条Layer
    CAShapeLayer *_flowShapelayer;
    
    ///圆环轨道Layer
    CAShapeLayer *_backgroundShapelayer;
    
}
@end


@implementation WTJCircleProgressView

-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        if (!_backgroundShapelayer) {
            _backgroundShapelayer = [CAShapeLayer layer];
            _backgroundShapelayer.frame = self.bounds;
            _backgroundShapelayer.strokeColor = [UIColor grayColor].CGColor;
            [self.layer addSublayer:_backgroundShapelayer];
            
        }
        
        if (!_flowShapelayer) {
            _flowShapelayer = [CAShapeLayer layer];
            _flowShapelayer.frame = self.bounds;
            _flowShapelayer.strokeColor = [UIColor orangeColor].CGColor;
            [self.layer addSublayer:_flowShapelayer];
        }
        
    }
    
    return self;
}

-(void)didMoveToSuperview{

    UIBezierPath *path = [UIBezierPath pathCenter:CGPointMake(self.frame.size.width/2., self.frame.size.width/2.) radius:self.frame.size.width/ 2 Ref:2*M_PI];
    
    _backgroundShapelayer.path = _flowShapelayer.path = path.CGPath;
    
    _backgroundShapelayer.lineWidth = _flowShapelayer.lineWidth = 5.0f;
    _backgroundShapelayer.fillColor = _flowShapelayer.fillColor = nil;
    _backgroundShapelayer.lineCap = _flowShapelayer.lineCap = @"round";
    _backgroundShapelayer.strokeStart = _flowShapelayer.strokeStart = 0;
    _backgroundShapelayer.strokeEnd = 1;
    _flowShapelayer.strokeEnd = 0;

    
}

#pragma mark -seter and geter

-(void)setProgress:(CGFloat)progress{

    _progress = progress;
    
    if (kMinProgress<_progress<=1.0) {
        NSLog(@"--%f",progress);
        
        __weak __typeof(_flowShapelayer) weakflowShapelayer = _flowShapelayer;
        
        [UIView animateWithDuration:0.1 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            
            weakflowShapelayer.strokeEnd = progress;
            
        } completion:^(BOOL finished) {
            
        }];
    }

}


-(void)setFlowShapeStorkColor:(UIColor *)flowColor{
    _flowShapelayer.strokeColor = flowColor.CGColor;
}

-(void)setBackgroundShapeStorkColor:(UIColor *)backgroundColor{
    _backgroundShapelayer.strokeColor = backgroundColor.CGColor;
}

@end
