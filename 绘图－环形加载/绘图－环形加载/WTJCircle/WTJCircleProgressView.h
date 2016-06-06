//
//  WTJCircleProgressView.h
//  绘图－环形加载
//
//  Created by wtj on 16/6/6.
//  Copyright © 2016年 com.yibei.renrenmeishu. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kMinProgress 0.0001

@interface WTJCircleProgressView : UIView

/**
 进度 kMinProgress  - 1
 */
@property (assign,nonatomic) CGFloat progress;

@property (nonatomic,assign)UIColor *flowShapeStorkColor;
@property (nonatomic,assign)UIColor *backgroundShapeStorkColor;

@end
