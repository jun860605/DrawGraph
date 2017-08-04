//
//  CustomBtn.m
//  DrawGraph
//
//  Created by 郑军 on 2017/8/4.
//  Copyright © 2017年 complany.com. All rights reserved.
//

#import "CustomBtn.h"

@implementation CustomBtn
+ (id)buttonWithType:(UIButtonType)buttonType  {
    CustomBtn *selfTemp ;
    selfTemp = [super buttonWithType:buttonType];
    if (selfTemp) {
        NSLog(@"调用了init方法") ;
    }
    return selfTemp ;
}


//只有点击圆形图片区域才有效（利用UIBezierPath来确定有效的点击区域）
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    //首先调用父类的方法确定点击的区域确实在按钮的区域中
    BOOL res = [super pointInside:point withEvent:event];
    if (res) {
        //绘制一个圆形path
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
        if ([path containsPoint:point]) {
            //如果在path区域内，返回YES
            return YES;
        }
        return NO;
    }
    return NO;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
