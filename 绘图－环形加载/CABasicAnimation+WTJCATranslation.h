//
//  CABasicAnimation+WTJCATranslation.h
//  绘图－环形加载
//
//  Created by wtj on 16/6/7.
//  Copyright © 2016年 com.yibei.renrenmeishu. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#define WTJTranslationAnimationkey @"transform.translation"
#define WTJRotationAnimationkey @"transform"
#define WTJScaleAnimationkey @"transform.scale"
#define WTJSpringAnimationkey @"opacity"
#define WTJPathAnimationkey @"position"
@interface CABasicAnimation (WTJCATranslation)
/**
 平移动画
 @param duration 时间
 @param width 平移移动宽度
 */
+(CABasicAnimation *)WTJTranslationAnimation:(CGFloat)width duration:(NSUInteger)duration;

/**
 旋转动画
 @param duration 时间
 */
+(CABasicAnimation *)WTJRotationAnimationDuration:(NSUInteger)duration;


/**
 缩放动画
 @param Scaling 缩放比例
 @param duration 时间
 */
+(CABasicAnimation *)WTJScaleAnimationScaling:(CGFloat)Scaling Duration:(NSUInteger)duration;


/**
 闪烁动画
 @param Spring 闪烁度
 */
+(CABasicAnimation *)WTJSpringAnimationSpring:(CGFloat)Spring Duration:(NSUInteger)duration;

/*
 路径动画
 
 **/

+(CABasicAnimation *)WTJPathAnimation;
@end
