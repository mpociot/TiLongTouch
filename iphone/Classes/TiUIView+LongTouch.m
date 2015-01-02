//
//  TiUIView+LongTouch.m
//  TiLongTouch
//
//  Created by Marcel Pociot on 26.11.14.
//
//
#import "TiUIView.h"
#import "TiUIView+LongTouch.h"

@implementation TiUIView (LongTouch)



-(void)recognizedLongPress:(UILongPressGestureRecognizer*)recognizer
{
    CGPoint p = [recognizer locationInView:self];
    NSDictionary *event = [NSDictionary dictionaryWithObjectsAndKeys:
                           NUMFLOAT(p.x), @"x",
                           NUMFLOAT(p.y), @"y",
                           @"touch", @"state",
                           nil];
    [self.proxy fireEvent:@"longpress" withObject:event];
    
    if ([recognizer state] == UIGestureRecognizerStateBegan) {
        CGPoint p = [recognizer locationInView:self];
        NSDictionary *event = [NSDictionary dictionaryWithObjectsAndKeys:
                               NUMFLOAT(p.x), @"x",
                               NUMFLOAT(p.y), @"y",
                               @"began", @"state",
                               nil];
        [self.proxy fireEvent:@"longpress" withObject:event];
    }
    if ([recognizer state] == UIGestureRecognizerStateEnded) {
        CGPoint p = [recognizer locationInView:self];
        NSDictionary *event = [NSDictionary dictionaryWithObjectsAndKeys:
                               NUMFLOAT(p.x), @"x",
                               NUMFLOAT(p.y), @"y",
                               @"ended", @"state",
                               nil];
        [self.proxy fireEvent:@"longpress" withObject:event];
    }
}

@end
