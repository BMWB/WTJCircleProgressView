//
//  UIBezierPath+WTJBezierPath.m
//  绘图－环形加载
//
//  Created by wtj on 16/6/6.
//  Copyright © 2016年 com.yibei.renrenmeishu. All rights reserved.
//

#import "UIBezierPath+WTJBezierPath.h"

@implementation UIBezierPath (WTJBezierPath)

+(UIBezierPath *)pathCenter:(CGPoint)center radius:(CGFloat)radius Ref:(CGFloat)percent
{
    return [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:-M_PI_2 endAngle:percent-M_PI_2 clockwise:1];
}
@end
