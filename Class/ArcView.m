//
//  ArcView.m
//  DrawGraph
//
//  Created by 郑军 on 2017/8/2.
//  Copyright © 2017年 complany.com. All rights reserved.
//

#import "ArcView.h"

@implementation ArcView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    /*  公共  */
//    CGContextRef context = UIGraphicsGetCurrentContext() ;
//    //线条颜色
//    CGContextSetRGBStrokeColor(context, 0, 0, 1, 1.0) ;
//    //线条宽度
//    CGContextSetLineWidth(context, 3) ;
    /* ***********begin************ */
    
    /*
        画弧线或者圆
     */
//    CGContextAddArc(context, 20, 20, 17, 0, 3.14 * 2, 0) ;
//    CGContextDrawPath(context,kCGPathStroke);
//    
//    CGContextAddArc(context,60,60,30,0,2*3.14,0);//添加一个圆
//    CGContextDrawPath(context,kCGPathFill);//绘制填充
//    
//    UIColor*aColor = [UIColor colorWithRed:0 green:1.0 blue:0 alpha:1];
//    CGContextSetFillColorWithColor(context, aColor.CGColor);//填充颜色
//    CGContextSetLineWidth(context,3.0);//线的宽度
//    CGContextAddArc(context,200,200,100,0,2*3.14,0);//添加一个圆
//    CGContextDrawPath(context,kCGPathFillStroke);
    
    /*
        绘制直线
     */
//    CGPoint points[5] ;
//    points[0] = CGPointMake(4, 4) ;
//    points[1] = CGPointMake(4, 80) ;
//    points[2] = CGPointMake(40, 100) ;
//    points[3] = CGPointMake(100, 280) ;
//    points[4] = CGPointMake(300, 20) ;
//    CGContextAddLines(context, points, 5) ;
//    CGContextDrawPath(context, kCGPathStroke) ;
    
    /*
        画圆或者椭圆
     */
    //填充颜色
//    CGContextSetRGBFillColor(context, 0, 1, 0, 1.0) ;
//    //绘制圆或者椭圆
//    CGContextAddEllipseInRect(context, CGRectMake(100, 100, 200, 100)) ;
//    //绘制路径
//    CGContextDrawPath(context, kCGPathEOFillStroke) ;
    
    
    //画三角形
//    CGPoint points[3] ;
//    points[0] = CGPointMake(100, 220) ;
//    
//    points[1] = CGPointMake(130, 220) ;
//    
//    points[2] = CGPointMake(110, 160) ;
//    
//    CGContextAddLines(context, points, 3) ;
//    //封装这个图形(密封)
//    CGContextClosePath(context) ;
//    
//    CGContextDrawPath(context, kCGPathEOFillStroke) ;
    
    
    //画圆角矩形
    ///*画圆角矩形*/
    
//    float fw =180;
//    
//    float fh =280;
//    
//    CGContextMoveToPoint(context, fw, fh-20);//开始坐标右边开始
//    
//    CGContextAddArcToPoint(context, fw, fh, fw-20, fh,10);//右下角角度
//    
//    CGContextAddArcToPoint(context,120, fh,120, fh-20,10);//左下角角度
//    
//    CGContextAddArcToPoint(context,120,250, fw-20,250,10);//左上角
//    
//    CGContextAddArcToPoint(context, fw,250, fw, fh-20,10);//右上角
//    
//    CGContextClosePath(context);
//    
//    CGContextDrawPath(context,kCGPathFillStroke);//根据坐标绘制路径
    /* ***********end************ */
    
    
    //贝塞尔曲线
    UIColor *color = [UIColor greenColor] ;
    [color set];
    UIBezierPath *path = [UIBezierPath bezierPath] ;
    path.lineWidth = 3.0 ;
    path.lineCapStyle = kCGLineCapRound ;
    path.lineJoinStyle = kCGLineJoinRound ;
    
    //二次贝塞尔曲线
//    [path moveToPoint:CGPointMake(40, 150)] ;
//    [path addQuadCurveToPoint:CGPointMake(140,200) controlPoint:CGPointMake(20, 40)];
//    [path stroke];
    
    //三次贝塞尔曲线
//    [path moveToPoint:CGPointMake(20, 200)]; [path addCurveToPoint:CGPointMake(260, 200) controlPoint1:CGPointMake(140, 0) controlPoint2:CGPointMake(140, 400)];
//    [path stroke];
    
    //一个控制点
//    [path moveToPoint:CGPointMake(20, 50)] ;
//    [path addQuadCurveToPoint:CGPointMake(150, 150) controlPoint:CGPointMake(100, 50)] ;
//    [path stroke] ;
    
    //两个控制点
//    [path moveToPoint:CGPointMake(30, 40)] ;
//    [path addCurveToPoint:CGPointMake(200, 240) controlPoint1:CGPointMake(100, 40) controlPoint2:CGPointMake(110, 240)] ;
    
    
    /*
     画x
     */
    [path moveToPoint:CGPointMake(30, 40)] ;
    [path addCurveToPoint:CGPointMake(200, 240) controlPoint1:CGPointMake(100, 40) controlPoint2:CGPointMake(110, 240)] ;
    
    [path moveToPoint:CGPointMake(200, 40)] ;
    [path addCurveToPoint:CGPointMake(40, 240) controlPoint1:CGPointMake(100, 40) controlPoint2:CGPointMake(110, 240)] ;

    [path stroke];
}


@end
