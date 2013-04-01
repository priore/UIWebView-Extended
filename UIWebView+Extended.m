//
//  UIWebView+Extended.m
//  RadioFioreDiLoto
//
//  Created by Danilo Priore on 01/04/13.
//  Copyright (c) 2013 Danilo Priore. All rights reserved.
//

#import "UIWebView+Extended.h"

@implementation UIWebView (Extended)

- (void)hideBackgroundAndScrollBar {
    self.opaque = NO;
    self.backgroundColor = [UIColor clearColor];
    
    for(UIView *view in self.subviews) {
        if ([view isKindOfClass:[UIImageView class]]) {
            // to transparent
            [view removeFromSuperview];
        }
        
        if ([view isKindOfClass:[UIScrollView class]]) {
            UIScrollView *sView = (UIScrollView *)view;
            //to hide Scroller bar
            sView.showsVerticalScrollIndicator = NO;
            sView.showsHorizontalScrollIndicator = NO;
            
            for (UIView* shadowView in [sView subviews]){
                //to remove shadow
                if ([shadowView isKindOfClass:[UIImageView class]]) {
                    [shadowView setHidden:TRUE];
                }
            }
        }
    }
}

@end
