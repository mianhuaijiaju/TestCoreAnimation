//
//  ViewController.m
//  TestCoreAnimation
//
//  Created by wc on 3/16/15.
//  Copyright (c) 2015 wc. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (nonatomic ,strong)CALayer *ballLayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _ballLayer = [CALayer layer];
    _ballLayer.backgroundColor = [UIColor cyanColor].CGColor;
    _ballLayer.cornerRadius = 5.0;
    _ballLayer.masksToBounds = YES;
    [self.view.layer addSublayer:_ballLayer];
    [self animate];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self animate];
}

- (void)animate
{
    _ballLayer.position = CGPointMake(self.view.center.x, 50);
    CAKeyframeAnimation *keyframeAnimation = [CAKeyframeAnimation animation];
    keyframeAnimation.keyPath = @"position";
    keyframeAnimation.duration = 1.0;
    keyframeAnimation.delegate = self;
    keyframeAnimation.values = @[
                                    [NSValue valueWithCGPoint:CGPointMake(150, 32)],
                                    [NSValue valueWithCGPoint:CGPointMake(150, 268)],
                                    [NSValue valueWithCGPoint:CGPointMake(150, 140)],
                                    [NSValue valueWithCGPoint:CGPointMake(150, 268)],
                                    [NSValue valueWithCGPoint:CGPointMake(150, 220)],
                                    [NSValue valueWithCGPoint:CGPointMake(150, 268)],
                                    [NSValue valueWithCGPoint:CGPointMake(150, 250)],
                                    [NSValue valueWithCGPoint:CGPointMake(150, 268)],
                                 ];
    keyframeAnimation.timingFunctions = @[
                                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn],
                                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut],
                                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn],
                                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut],
                                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn],
                                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut],
                                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn],
                                          ];
    keyframeAnimation.keyTimes = @[@0.0, @0.3, @0.5, @0.7, @0.8, @0.9, @0.95, @1.0];
//    _ballLayer.position = CGPointMake(150, 268);
    [self.ballLayer addAnimation:keyframeAnimation forKey:nil];
    
    CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(step:)];
    [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    UITrackingRunLoopMode
}

@end
