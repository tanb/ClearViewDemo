//
//  ClearView.m
//  ClearViewDemo
//
//  Created by Tomonori Tanabe on 7/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ClearView.h"

@implementation ClearView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (!self) return nil;
    
    self.backgroundColor = [UIColor clearColor];

    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView *hit = [super hitTest:point withEvent:event];
    if ([hit isKindOfClass:[ClearView class]]) {
        return nil;
    }
    return hit;
}

@end
