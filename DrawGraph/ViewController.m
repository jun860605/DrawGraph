//
//  ViewController.m
//  DrawGraph
//
//  Created by 郑军 on 2017/8/2.
//  Copyright © 2017年 complany.com. All rights reserved.
//

#import "ViewController.h"
#import "ArcView.h"
#import "ImageAndStringView.h"
#import "CustomBtn.h"
@interface ViewController ()
@property (nonatomic , strong) CAShapeLayer *shapeLayer ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    //简单的图形绘制
//    ArcView *arcView = [[ArcView alloc] initWithFrame:CGRectMake(0, 100, 300, 300)] ;
//    arcView.backgroundColor = [UIColor redColor] ;
//    [self.view addSubview:arcView];
    
    //简单动画
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom] ;
//    btn.frame = CGRectMake(50, 50, 150, 40) ;
//    [btn setTitle:@"测试" forState:UIControlStateNormal];
//    btn.backgroundColor = [UIColor greenColor] ;
//    [btn addTarget:self action:@selector(moveTheBasketBall) forControlEvents:UIControlEventTouchUpInside] ;
//    [self.view addSubview:btn] ;
    
    
    //简单的渐变色
//    CAGradientLayer *gradientLayer = [CAGradientLayer layer] ;
//    gradientLayer.frame = CGRectMake(100, 100, 200, 40) ;
//    gradientLayer.colors = [NSArray arrayWithObjects:(id)[UIColor redColor].CGColor,
//                                                     (id)[UIColor greenColor].CGColor,
//                                                     (id)[UIColor yellowColor].CGColor,
//                                                     (id)[UIColor blueColor].CGColor,
//                                                     (id)[UIColor blackColor].CGColor,nil] ;
//    gradientLayer.startPoint = CGPointMake(0, 1) ;
//    gradientLayer.endPoint = CGPointMake(1, 1) ;
//    [self.view.layer addSublayer:gradientLayer];
    
    
//    ImageAndStringView *stringView = [[ImageAndStringView alloc] initWithFrame:CGRectMake(50, 100, 270, 280)] ;
//    [self.view addSubview:stringView];
    
    
    CustomBtn *btn = [CustomBtn buttonWithType:UIButtonTypeCustom] ;
    btn.frame = CGRectMake(50, 50, 40, 40) ;
    [btn setImage:[UIImage imageNamed:@"1.png"] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor greenColor] ;
    [btn addTarget:self action:@selector(moveTheBasketBall) forControlEvents:UIControlEventTouchUpInside] ;
    [self.view addSubview:btn] ;

}

//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    //首先调用父类的方法确定点击的区域确实在按钮的区域中
//    BOOL res = [super pointInside:point withEvent:event];
//    if (res) {
//        //绘制一个圆形path
//        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
//        if ([path containsPoint:point]) {
//            //如果在path区域内，返回YES
//            returnYES;
//        }
//        returnNO;
//    }
//    returnNO;
//}

- (void)moveTheTest {
    if (self.shapeLayer) {
        [self.shapeLayer removeFromSuperlayer];
    }
    self.shapeLayer = [CAShapeLayer layer] ;
    self.shapeLayer.frame = CGRectMake(30, 30, 300, 300) ; //设置shapelayer的尺寸和位置
    //    self.shapeLayer.anchorPoint = CGPointMake(0, 0) ;
    self.shapeLayer.backgroundColor = [UIColor redColor].CGColor ;
    self.shapeLayer.position = self.view.center ;
    self.shapeLayer.fillColor = [UIColor clearColor].CGColor ;
    self.shapeLayer.lineWidth = 2 ;
    self.shapeLayer.strokeColor = [UIColor greenColor].CGColor ;
    
    UIColor *color = [UIColor greenColor] ;
    [color set];
    UIBezierPath *path = [UIBezierPath bezierPath] ;
    path.lineWidth = 3.0 ;
    path.lineCapStyle = kCGLineCapRound ;
    path.lineJoinStyle = kCGLineJoinRound ;
    
    /*
        画x
     */
    [path moveToPoint:CGPointMake(30, 40)] ;
    [path addCurveToPoint:CGPointMake(200, 240) controlPoint1:CGPointMake(100, 40) controlPoint2:CGPointMake(110, 240)] ;
    
    [path moveToPoint:CGPointMake(200, 40)] ;
    [path addCurveToPoint:CGPointMake(40, 240) controlPoint1:CGPointMake(100, 40) controlPoint2:CGPointMake(110, 240)] ;
    
    /*
        画笑脸
     */
//    [path moveToPoint:CGPointMake(30, 60)];
//    [path addQuadCurveToPoint:CGPointMake(100, 60) controlPoint:CGPointMake(65, 45)] ;
//    [path moveToPoint:CGPointMake(180, 60)];
//    [path addQuadCurveToPoint:CGPointMake(250, 60) controlPoint:CGPointMake(215, 45)] ;
//    [path moveToPoint:CGPointMake(105, 260)];
//    [path addQuadCurveToPoint:CGPointMake(170, 260) controlPoint:CGPointMake(137.5, 275)] ;
    
    /*
     画圆
     */
//    [path moveToPoint:CGPointMake(150, 50)] ;
//    [path addQuadCurveToPoint:CGPointMake(50, 150) controlPoint:CGPointMake(50, 50)] ;
//    [path moveToPoint:CGPointMake(50, 150)] ;
//    [path addQuadCurveToPoint:CGPointMake(150, 250) controlPoint:CGPointMake(50, 250)] ;
//    [path moveToPoint:CGPointMake(150, 250)] ;
//    [path addQuadCurveToPoint:CGPointMake(250, 150) controlPoint:CGPointMake(250, 250)] ;
//    [path moveToPoint:CGPointMake(250, 150)] ;
//    [path addQuadCurveToPoint:CGPointMake(150, 50) controlPoint:CGPointMake(250, 50)] ;
//    
//    [path moveToPoint:CGPointMake(30, 60)];
//    [path addQuadCurveToPoint:CGPointMake(100, 60) controlPoint:CGPointMake(65, 45)] ;
//    [path moveToPoint:CGPointMake(180, 60)];
//    [path addQuadCurveToPoint:CGPointMake(250, 60) controlPoint:CGPointMake(215, 45)] ;
//    [path moveToPoint:CGPointMake(105, 260)];
//    [path addQuadCurveToPoint:CGPointMake(170, 260) controlPoint:CGPointMake(137.5, 275)] ;

    
    [path stroke];
    self.shapeLayer.path = path.CGPath ;
    
    [self.view.layer addSublayer:self.shapeLayer];
    
    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"] ;
    pathAnimation.duration = 3.0 ;
    pathAnimation.fromValue = [NSNumber numberWithFloat:0.0f] ;
    pathAnimation.toValue = [NSNumber numberWithFloat:1.0f] ;
    [self.shapeLayer addAnimation:pathAnimation forKey:nil] ;
    
    /*
     动画结束时显示的那一部分
     */
    self.shapeLayer.strokeStart = 0;
    self.shapeLayer.strokeEnd = 1;
}


- (void)moveTheBigBall {
    UIColor *color = [UIColor greenColor] ;
    [color set];
    UIBezierPath *path = [UIBezierPath bezierPath] ;
    path.lineWidth = 3.0 ;
    path.lineCapStyle = kCGLineCapRound ;
    path.lineJoinStyle = kCGLineJoinRound ;
    
    /*
     画 x
     */
    [path moveToPoint:CGPointMake(30, 40)] ;
    [path addCurveToPoint:CGPointMake(200, 240) controlPoint1:CGPointMake(100, 40) controlPoint2:CGPointMake(110, 240)] ;
    
    [path moveToPoint:CGPointMake(200, 40)] ;
    [path addCurveToPoint:CGPointMake(40, 240) controlPoint1:CGPointMake(100, 40) controlPoint2:CGPointMake(110, 240)] ;

    CAShapeLayer *layer = [CAShapeLayer layer] ;
    layer.path = path.CGPath ;
    layer.strokeColor = [UIColor redColor].CGColor ;
    layer.fillColor = [UIColor clearColor].CGColor ;
    layer.lineWidth = 3 ;
    [self.view.layer addSublayer:layer];
    layer.strokeStart = 0 ;
    layer.strokeEnd = 1 ;
    
    UIImageView *basketball = [[UIImageView alloc] initWithFrame:(CGRectMake(15, 20, 40, 40))];
    basketball.image = [UIImage imageNamed:@"basketball"];
    [self.view addSubview:basketball]; // 添加篮球
    
//    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"animationPath"] ;
//    animation.fromValue = @0 ;
//    animation.toValue = @(1.0) ;
//    animation.duration = 1.5 ;
//    animation.repeatCount = 100 ;
    
    CAKeyframeAnimation *pathAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    pathAnimation.calculationMode = kCAAnimationPaced;// 我理解为节奏
    pathAnimation.fillMode = kCAFillModeForwards;
    pathAnimation.path = path.CGPath ;
    pathAnimation.removedOnCompletion = NO;// 是否在动画完成后从 Layer 层上移除  回到最开始状态
    pathAnimation.duration = 3.0f;// 动画时间
    pathAnimation.repeatCount = 100;// 动画重复次数

    
    [basketball.layer addAnimation:pathAnimation forKey:nil] ;
    [self.view.layer addSublayer:layer];

}


- (void)moveTheBall {
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 400)]; // 起点 // 设置终点 和两个控制点（拐点）
    [path addCurveToPoint:CGPointMake(400, 200) controlPoint1:(CGPointMake(120, 10)) controlPoint2:(CGPointMake(300, 20))];
    
    CAShapeLayer *pathLayer = [CAShapeLayer layer];
    pathLayer.path = path.CGPath;// 绘制路径
    pathLayer.strokeColor = [UIColor redColor].CGColor;// 轨迹颜色
    pathLayer.fillColor = [UIColor clearColor].CGColor;// 填充颜色
    pathLayer.lineWidth = 5.0f; // 线宽
    [self.view.layer addSublayer:pathLayer] ;
//
    //position为位置的变化的动画
    CAKeyframeAnimation *pathAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    pathAnimation.calculationMode = kCAAnimationPaced;// 我理解为节奏
    pathAnimation.fillMode = kCAFillModeForwards;
    pathAnimation.path = path.CGPath ;
    pathAnimation.removedOnCompletion = NO;// 是否在动画完成后从 Layer 层上移除  回到最开始状态
    pathAnimation.duration = 3.0f;// 动画时间
    pathAnimation.repeatCount = 100;// 动画重复次数

    UIImageView *basketball = [[UIImageView alloc] initWithFrame:(CGRectMake(0, 400, 80, 80))];
    basketball.image = [UIImage imageNamed:@"basketball"];
    [self.view addSubview:basketball]; // 添加篮球
    [basketball.layer addAnimation:pathAnimation forKey:nil ];// 添加动画
    [self.view.layer addSublayer:pathLayer];// 绘制的轨迹
}


- (void)drawThePath {
    CAShapeLayer *shapeLayer = [CAShapeLayer layer] ;
    shapeLayer.frame = CGRectMake(30, 30, 300, 300);
    shapeLayer.position = self.view.center ;
    shapeLayer.strokeColor = [UIColor redColor].CGColor ;
    shapeLayer.fillColor = [UIColor clearColor].CGColor ;
    shapeLayer.lineWidth = 3 ;
    shapeLayer.strokeStart = 0.0 ;
    shapeLayer.strokeEnd = 1.0 ;
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath] ;
    [bezierPath moveToPoint:CGPointMake(30,40)] ;
    [bezierPath addCurveToPoint:CGPointMake(200, 240) controlPoint1:CGPointMake(100, 40) controlPoint2:CGPointMake(110, 240)] ;
    [bezierPath moveToPoint:CGPointMake(200, 40)] ;
    [bezierPath addCurveToPoint:CGPointMake(40, 240) controlPoint1:CGPointMake(100, 40) controlPoint2:CGPointMake(110, 240)] ;
    bezierPath.lineCapStyle = kCGLineCapRound ;
    bezierPath.lineJoinStyle = kCGLineJoinRound ;
    shapeLayer.path = bezierPath.CGPath ;
    [self.view.layer addSublayer:shapeLayer] ;
    
    
    //strokeEnd为画到边线结束动画停止
    CABasicAnimation *basicAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"] ;//strokeEnd
    basicAnimation.duration = 3 ;
    basicAnimation.fromValue = [NSNumber numberWithFloat:0] ;
    basicAnimation.toValue = [NSNumber numberWithFloat:1] ;
    [shapeLayer addAnimation:basicAnimation forKey:nil];
    
    /*
     动画结束时显示的那一部分
     */
    shapeLayer.strokeStart = 0;
    shapeLayer.strokeEnd = 1;
}

- (void)moveTheBasketBall {
    NSLog(@"发哈哈风") ;
    
    
//    UIBezierPath *bezierPath = [UIBezierPath bezierPath] ;
//    [bezierPath moveToPoint:CGPointMake(30,40)] ;
//    [bezierPath addCurveToPoint:CGPointMake(200, 240) controlPoint1:CGPointMake(100, 40) controlPoint2:CGPointMake(110, 240)] ;
//    [bezierPath moveToPoint:CGPointMake(200, 40)] ;
//    [bezierPath addCurveToPoint:CGPointMake(40, 240) controlPoint1:CGPointMake(100, 40) controlPoint2:CGPointMake(110, 240)] ;
//    bezierPath.lineCapStyle = kCGLineCapRound ;
//    bezierPath.lineJoinStyle = kCGLineJoinRound ;
//
//    CAShapeLayer *shapeLayer = [CAShapeLayer layer] ;
//    shapeLayer.lineWidth = 3.0 ;
//    shapeLayer.strokeColor = [UIColor redColor].CGColor ;
//    shapeLayer.fillColor = [UIColor yellowColor].CGColor ;
//    shapeLayer.path = bezierPath.CGPath ;
//    [self.view.layer addSublayer:shapeLayer];
//    shapeLayer.strokeStart = 0 ;
//    shapeLayer.strokeEnd = 1 ;
//    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 40, 40)] ;
//    imageView.image = [UIImage imageNamed:@"basketball"] ;
//    [self.view addSubview:imageView];
//    
//    CAKeyframeAnimation *keyFrameAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"] ;
//    keyFrameAnimation.repeatCount = 1 ;
//    keyFrameAnimation.duration = 1.5 ;
//    keyFrameAnimation.path = bezierPath.CGPath;
//    keyFrameAnimation.calculationMode = kCAAnimationPaced ;
//    keyFrameAnimation.removedOnCompletion = YES;
//    [imageView.layer addAnimation:keyFrameAnimation forKey:nil];
//    [self performSelector:@selector(dismissTheImageView:) withObject:imageView afterDelay:1.5] ;
}

- (void)dismissTheImageView:(UIImageView *)imageView {
    [imageView removeFromSuperview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
