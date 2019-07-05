//
//  BorderedLabel.m
//  DandPs
//
//  Created by Maribel Montejano on 7/5/19.
//  Copyright © 2019 Maribel Montejano. All rights reserved.
//

#import "BorderedLabel.h"

@implementation BorderedLabel

@synthesize topInset, leftInset, bottomInset, rightInset;

- (void)drawTextInRect:(CGRect)rect
{
    UIEdgeInsets insets = {self.topInset, self.leftInset,
        self.bottomInset, self.rightInset};
    
    return [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

@end
