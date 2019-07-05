//
//  FirstViewController.m
//  DandPs
//
//  Created by Maribel Montejano on 7/4/19.
//  Copyright © 2019 Maribel Montejano. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)changeBackgroundPressed:(UIButton *)sender {
    self.view.backgroundColor = [UIColor greenColor];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
