//
//  CABasicAnimation+WTJCATranslation.m
//  绘图－环形加载
//
//  Created by wtj on 16/6/7.
//  Copyright © 2016年 com.yibei.renrenmeishu. All rights reserved.
//

#import "CABasicAnimation+WTJCATranslation.h"
#import <UIKit/UIKit.h>

@implementation CABasicAnimation (WTJCATranslation)

+(CABasicAnimation *)WTJTranslationAnimation:(CGFloat)width duration:(NSUInteger)duration{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:WTJTranslationAnimationkey];
    animation.duration = duration;
    animation.toValue = [NSValue valueWithCGPoint:CGPointMake(width, 0)];
    
    //指定动画重复多少圈是累加的
    animation.cumulative = YES;
    //动画完成是不自动很危险
    animation.removedOnCompletion = NO;
    //设置移动的效果为快入快出
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    //设置无限循环动画
    animation.repeatCount = HUGE_VALF;
    //设置动画完成时，自动以动画回到原点
    animation.autoreverses = YES;
    //设置动画完成时，返回到原点
    animation.fillMode = kCAFillModeForwards;
    return animation;
}

+(CABasicAnimation *)WTJRotationAnimationDuration:(NSUInteger)duration{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:WTJRotationAnimationkey];
    animation.duration = duration;
    
    //Z轴旋转180度
    CATransform3D transform3d = CATransform3DMakeRotation(-M_PI, 0, 0, M_PI);
    animation.toValue = [NSValue valueWithCATransform3D:transform3d];
    //指定动画重复多少圈是累加的
    animation.cumulative = YES;
    //动画完成是不自动很危险
    animation.removedOnCompletion = NO;
    //设置旋转效果为线型
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    //设置无限循环动画
    animation.repeatCount = HUGE_VALF;
    //设置动画完成时，自动以动画回到原点
    animation.autoreverses = NO;
    //设置动画完成时，返回到原点
    animation.fillMode = kCAFillModeForwards;
    
    return animation;
    
}

+(CABasicAnimation *)WTJScaleAnimationScaling:(CGFloat)Scaling Duration:(NSUInteger)duration{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:WTJScaleAnimationkey];
    animation.duration = duration;
    animation.fromValue = @(1);
    animation.toValue = @(Scaling);
    animation.removedOnCompletion = NO;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    animation.repeatCount = HUGE_VALF;
    animation.autoreverses = YES;
    animation.fillMode = kCAFillModeForwards;
    return animation;
    
}

+(CABasicAnimation *)WTJSpringAnimationSpring:(CGFloat)Spring Duration:(NSUInteger)duration{

    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:WTJSpringAnimationkey];
    animation.duration = duration;
    animation.fromValue = @(1);
    animation.toValue = @(Spring);
    animation.removedOnCompletion = NO;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animation.repeatCount = HUGE_VALF;
    animation.autoreverses = YES;
    animation.fillMode = kCAFillModeForwards;
    return animation;
}

+(CABasicAnimation *)WTJPathAnimation{

    // 添加动画
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:WTJPathAnimationkey];
    // 起点，这个值是指position，也就是layer的中心值
    animation.fromValue = [NSValue valueWithCGPoint:CGPointMake(50, 50)];
    // 终点，这个值是指position，也就是layer的中心值
    animation.toValue = [NSValue valueWithCGPoint:CGPointMake([UIScreen mainScreen].bounds.size.width - 50,
                                                              [UIScreen mainScreen].bounds.size.height - 100)];
    // byValue与toValue的区别：byValue是指x方向再移动到指定的宽然后y方向移动指定的高
    // 而toValue是整体移动到指定的点
    //  animation.byValue = [NSValue valueWithCGPoint:CGPointMake(self.view.bounds.size.width - 50 - 50,
    //                                                            self.view.bounds.size.height - 50 - 50 - 50)];
    // 线性动画
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.removedOnCompletion = NO;
    
    // 设定开始值到结束值花费的时间，也就是动画时长，单位为秒
    animation.duration = 2;
    
    // 播放速率，默认为1，表示常速
    // 设置为2则以2倍的速度播放，同样设置为N则以N倍速度播放
    // 如果值小于1，自然就是慢放
    animation.speed = 0.5;
    
    // 开始播放动画的时间，默认为0.0，通常是在组合动画中使用
    animation.beginTime = 0.0;
    
    // 播放动画的次数，默认为0，表示只播放一次
    // 设置为3表示播放3次
    // 设置为HUGE_VALF表示无限动画次数
    animation.repeatCount = HUGE_VALF;
    
    // 默认为NO，设置为YES后，在动画达到toValue点时，就会以动画由toValue返回到fromValue点。
    // 如果不设置或设置为NO，在动画到达toValue时，就会突然马上返回到fromValue点
    animation.autoreverses = YES;
    
    // 当autoreverses设置为NO时，最终会留在toValue处
    animation.fillMode = kCAFillModeForwards;
    return animation;
}
@end
