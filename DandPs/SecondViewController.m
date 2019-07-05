//
//  SecondViewController.m
//  DandPs
//
//  Created by Maribel Montejano on 7/4/19.
//  Copyright © 2019 Maribel Montejano. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property int viewCount;   // Will keep our count for times this VC has been displayed

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UILabel *viewCountNumLabel;
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
}

- (void)viewWillAppear:(BOOL)animated {
    if (self.viewCount < 1) {
        self.statusLabel.text = @"I am a brand new VC!";
    } else {
        self.statusLabel.text = @"I have been seen before";
        self.viewCount += 1;
    }
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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
