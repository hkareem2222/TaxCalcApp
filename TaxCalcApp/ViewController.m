//
//  ViewController.m
//  TaxCalcApp
//
//  Created by Husein Kareem on 5/4/15.
//  Copyright (c) 2015 Husein Kareem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property double caTax;
@property double chiTax;
@property double nyTax;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame= self.segmentedControl.frame;
    [self.segmentedControl setFrame:CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, 100)];
    self.caTax = 0.075;
    self.chiTax = 0.0925;
    self.nyTax = 0.045;
}
- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *result = [self.priceTextField text];
    double resultValue = [result doubleValue];

    if (self.segmentedControl.selectedSegmentIndex == 0) {
        resultValue = resultValue * self.caTax + resultValue;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", resultValue];
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        resultValue = resultValue * self.chiTax + resultValue;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", resultValue];
    } else if (self.segmentedControl.selectedSegmentIndex == 2) {
        resultValue = resultValue * self.nyTax + resultValue;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", resultValue];
    }

}

@end
