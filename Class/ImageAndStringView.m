//
//  ImageAndStringView.m
//  DrawGraph
//
//  Created by 郑军 on 2017/8/4.
//  Copyright © 2017年 complany.com. All rights reserved.
//

#import "ImageAndStringView.h"

@implementation ImageAndStringView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
//    NSString *message = @"这是一段聊天记录,文字尽量不要太多阿卡就是的房间按税法就是了回复大幅度；卡了；是否案发后恢复发哈就地方" ;
//    NSMutableDictionary *attrs = [NSMutableDictionary dictionary] ;
//    [attrs setValue:[UIFont systemFontOfSize:15] forKey:NSFontAttributeName] ;
//    [attrs setValue:[UIColor redColor] forKey:NSForegroundColorAttributeName] ;
//    
//    
//    //计算文字的宽高
//    CGSize textSize = [message boundingRectWithSize:CGSizeMake(200, 998)
//                                            options:NSStringDrawingUsesLineFragmentOrigin
//                                         attributes:attrs
//                                            context:nil].size ;
//    // 2.画底色--灰色的气泡
//    CGRect popRect = CGRectZero;
//    popRect.origin.x = self.bounds.size.width - 40 - textSize.width;
//    popRect.origin.y = 10;
//    popRect.size.width = textSize.width + 20;
//    popRect.size.height = textSize.height + 20;
//    
//    UIBezierPath *rectPath = [UIBezierPath bezierPathWithRoundedRect:popRect cornerRadius:10];
//    [[UIColor lightGrayColor] setFill];
//    [rectPath fill];
//    
//    // 3.绘制三角形
//    CGPoint startP = CGPointMake(self.bounds.size.width - 20, popRect.size.height);
//    
//    UIBezierPath *triPath = [UIBezierPath bezierPath];
//    [triPath moveToPoint:startP];
//    [triPath addLineToPoint:CGPointMake(startP.x+10, startP.y+10)];
//    [triPath addLineToPoint:CGPointMake(startP.x-10, startP.y+10)];
//    [triPath closePath];
//    [triPath fill];
//    
//    // 4.绘制字符串
//    [message drawInRect:CGRectMake(popRect.origin.x+10, popRect.origin.y+10, textSize.width, textSize.height) withAttributes:attrs];
    
    
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 100, 120, 120)] ;
    [path addClip] ;
    
    UIImage *image = [UIImage imageNamed:@"1.png"] ;
    [image drawAtPoint:CGPointMake(150, 150)] ;
    
}


@end
