//
//  FirstViewController.m
//  DandPs
//
//  Created by Maribel Montejano on 7/4/19.
//  Copyright © 2019 Maribel Montejano. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "BorderedLabel.h"

@interface FirstViewController () <CanReceiveSpellDelegate>

@property int viewCount;
@property (weak, nonatomic) IBOutlet UILabel *vcNumberLabel;
@property (weak, nonatomic) IBOutlet BorderedLabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UILabel *viewCountNumLabel;
@property (weak, nonatomic) IBOutlet UILabel *spellNameLabel;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.viewCount = 0;
    self.viewCountNumLabel.text = [NSString stringWithFormat:@"%d", self.viewCount];
    
    NSLog(@"Call view did load");

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
    NSLog(@"Call view will appear");
    NSLog(@"%d", self.viewCount);
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
    self.view.backgroundColor = [UIColor colorWithRed:0.67 green:0.82 blue:0.98 alpha:1.0];
    self.vcNumberLabel.textColor =  [UIColor blackColor];
    self.statusLabel.textColor = [UIColor blackColor];
    self.countLabel.textColor = [UIColor blackColor];
    self.viewCountNumLabel.textColor = [UIColor blackColor];
    self.spellNameLabel.textColor = [UIColor blackColor];
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    SecondViewController *secondViewController = [segue destinationViewController];
    // do the setup to make ourselves available for messages
    secondViewController.delegate = self;
}

- (void)receiveASpell:(NSString *)spell {
    self.spellNameLabel.text = spell;
}

@end
