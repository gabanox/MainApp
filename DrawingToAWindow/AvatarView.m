//
//  MyQuartzView.m
//  DrawingToAWindow
//
//  Created by Gabriel Ramirez on 4/13/13.
//  Copyright (c) 2013 badge.me. All rights reserved.
//

#import "AvatarView.h"

@implementation AvatarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{

    CGImageRef imageRef = [[UIImage imageNamed:@"avatar.jpg"] CGImage];
   
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // set the background to black
    [[UIColor whiteColor] setFill];
    CGContextFillRect(context, self.bounds);
    
    // modify the context coordinates,
    // UIKit and CoreGraphics are oriented differently
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 0, CGRectGetHeight(rect));
    CGContextScaleCTM(context, 1, -1);
    
    // add clipping path to the context, then execute the clip
    // this is in effect for all drawing until GState restored
    CGContextAddEllipseInRect(context, CGRectMake(105,300,100,100));

    CGContextClip(context);
    
    // stretch the image to be the size of the view
    CGContextDrawImage(context, CGRectMake(105,300,100,100), imageRef);
    CGContextRestoreGState(context);
        
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *myTouch = [touches anyObject];
    CGPoint location = [myTouch locationInView:[myTouch view]];
    NSLog(@"X => %0.0f", location.x);
    NSLog(@"Y => %0.0f", location.y);
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesMoved");
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesEnded");
}
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesCancelled");
}

@end
