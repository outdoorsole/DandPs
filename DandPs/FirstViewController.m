//
//  FirstViewController.m
//  DandPs
//
//  Created by Maribel Montejano on 7/4/19.
//  Copyright © 2019 Maribel Montejano. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property int viewCount;
@property (weak, nonatomic) IBOutlet UILabel *vcNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UILabel *viewCountNumLabel;

@end

@implementation FirstViewController

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
    self.view.backgroundColor = [UIColor colorWithRed:0.67 green:0.82 blue:0.98 alpha:1.0];
    self.vcNumberLabel.textColor =  [UIColor blackColor];
    self.statusLabel.textColor = [UIColor blackColor];
    self.countLabel.textColor = [UIColor blackColor];
    self.viewCountNumLabel.textColor = [UIColor blackColor];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
