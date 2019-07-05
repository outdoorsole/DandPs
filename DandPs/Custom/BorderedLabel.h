//
//  BorderedLabel.h
//  DandPs
//
//  Created by Maribel Montejano on 7/5/19.
//  Copyright © 2019 Maribel Montejano. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BorderedLabel : UILabel {
    CGFloat topInset;
    CGFloat leftInset;
    CGFloat bottomInset;
    CGFloat rightInset;
}

@property (nonatomic) CGFloat topInset;
@property (nonatomic) CGFloat leftInset;
@property (nonatomic) CGFloat bottomInset;
@property (nonatomic) CGFloat rightInset;

@end

NS_ASSUME_NONNULL_END
