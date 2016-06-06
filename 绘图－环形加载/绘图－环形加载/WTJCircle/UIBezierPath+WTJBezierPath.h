//
//  UIBezierPath+WTJBezierPath.h
//  绘图－环形加载
//
//  Created by wtj on 16/6/6.
//  Copyright © 2016年 com.yibei.renrenmeishu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBezierPath (WTJBezierPath)

/**
 *
 * @param center path中心
 * @param radius path半径
 * @param Ref path旋转角度
 *
 */
+(UIBezierPath *)pathCenter:(CGPoint)center radius:(CGFloat)radius Ref:(CGFloat)percent;
@end
