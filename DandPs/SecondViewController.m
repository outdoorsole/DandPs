//
//  SecondViewController.m
//  DandPs
//
//  Created by Maribel Montejano on 7/4/19.
//  Copyright © 2019 Maribel Montejano. All rights reserved.
//

#import "SecondViewController.h"
#import "BorderedLabel.h"

@interface SecondViewController ()
@property int viewCount;   // Will keep our count for times this VC has been displayed

@property (weak, nonatomic) IBOutlet BorderedLabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UILabel *viewCountNumLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.viewCount = 0;
    self.viewCountNumLabel.text = [NSString stringWithFormat:@"%d", self.viewCount];
    
    // Set up buttons
    self.changeBackgroundButton.layer.cornerRadius = 16;
    self.goToVCButton.layer.cornerRadius = 16;
    
    self.statusLabel.layer.borderColor = [UIColor redColor].CGColor;
    self.statusLabel.layer.borderWidth = 1;
    self.statusLabel.topInset = 5;
    self.statusLabel.bottomInset = 5;
    self.statusLabel.rightInset = 5;
    self.statusLabel.leftInset = 5;
}

- (void)viewWillAppear:(BOOL)animated {
    if (self.viewCount < 1) {
        self.statusLabel.text = @"I am a brand new VC!";
    } else {
        self.statusLabel.text = @"I have been seen before";
    }
        self.viewCount += 1;
    self.viewCountNumLabel.text = [NSString stringWithFormat:@"%d", self.viewCount];
}

// Change background color and labels for this VC
- (IBAction)changeBackgroundPressed:(UIButton *)sender {
    UIColor *newColor = [UIColor colorWithRed:0.87 green:0.66 blue:0.96 alpha:1.0];;
    
    self.view.backgroundColor = newColor;
    self.statusLabel.textColor = [UIColor whiteColor];
    self.countLabel.textColor = [UIColor whiteColor];
    self.viewCountNumLabel.textColor = [UIColor whiteColor];
}

- (IBAction)goButtonTapped:(UIButton *)sender {
    [self.delegate receiveASpell:self.textField.text];
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
