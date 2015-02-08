//
//  ViewController.m
//  calculatorApp
//
//  Created by Charles on 2/6/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property double caTax;
@property double chiTax;
@property double nyTax;

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = 7.5;
    self.chiTax = 9.25;
    self.nyTax = 4.5;
}



- (IBAction)onCalculateButtonTapped:(id)sender
{
    
    if (self.segmentedControl.selectedSegmentIndex == 0)
    {
        // 1.  Get int from priceTextField.
        float beforeTax = [self.priceTextField.text floatValue];
        
        // 2.  int * self.caTax = caTaxResult
        float taxAmount = beforeTax * (self.caTax/100);
        
        // 3.  int + caTaxResult = totalResult
        float taxAndOriginalAmountTotal = beforeTax + taxAmount;
        
        // 4.  totalResult = resultsLabel
        NSString *finalValue = [NSString stringWithFormat: @"%.02f", taxAndOriginalAmountTotal];
        self.resultLabel.text = finalValue;
    }
    
    else if (self.segmentedControl.selectedSegmentIndex == 1)
    {
        float beforeTax = [self.priceTextField.text floatValue];
        float taxAmount = beforeTax * (self.chiTax/100);
        float taxAndOriginalAmountTotal = beforeTax + taxAmount;
        NSString *finalValue = [NSString stringWithFormat: @"%.02f", taxAndOriginalAmountTotal];
        self.resultLabel.text = finalValue;
    }
    
    else
    {
        float beforeTax = [self.priceTextField.text floatValue];
        float taxAmount = beforeTax * (self.nyTax/100);\
        float taxAndOriginalAmountTotal = beforeTax + taxAmount;
        NSString *finalValue = [NSString stringWithFormat: @"%.02f", taxAndOriginalAmountTotal];
        self.resultLabel.text = finalValue;
    }

}

@end
