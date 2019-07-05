//
//  SecondViewController.h
//  DandPs
//
//  Created by Maribel Montejano on 7/4/19.
//  Copyright © 2019 Maribel Montejano. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// Implement the protocol
// List of the function names
@protocol CanReceiveSpellDelegate
- (void)receiveASpell:(NSString *)spell;
@end

@interface SecondViewController : UIViewController
// Create property for the delegate
@property (nonatomic, weak) id<CanReceiveSpellDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIButton *changeBackgroundButton;
@property (weak, nonatomic) IBOutlet UIButton *goToVCButton;

@end

NS_ASSUME_NONNULL_END
