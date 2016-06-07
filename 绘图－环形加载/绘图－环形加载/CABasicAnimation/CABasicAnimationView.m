//
//  CABasicAnimationView.m
//  绘图－环形加载
//
//  Created by wtj on 16/6/7.
//  Copyright © 2016年 com.yibei.renrenmeishu. All rights reserved.
//

#import "CABasicAnimationView.h"
@implementation CABasicAnimationView

-(instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    
    if (self) {
       
        self.layer.borderColor = [UIColor greenColor].CGColor;
        self.layer.borderWidth = 2;
        self.backgroundColor = [UIColor redColor];
        
    }
    
    return self;
}



@end
