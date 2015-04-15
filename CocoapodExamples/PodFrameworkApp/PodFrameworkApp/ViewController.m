//
//  ViewController.m
//  PodFrameworkApp
//
//  Created by Erik Engheim on 14/04/15.
//  Copyright (c) 2015 Pexip. All rights reserved.
//

#import "ViewController.h"
#import "PodFrameworkApp-Swift.h"

@import Funcussion;
@import OCCalculator;

//#import <OCCalculator/OCCalculator.h>
//@import OCCalculator;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *leftOperand;
@property (weak, nonatomic) IBOutlet UITextField *rightOperand;
@property (weak, nonatomic) IBOutlet UITextField *result;

@end

@implementation ViewController {
    OCCalculator *calculator_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *numericArray = @[@42,@20,@22];
    [numericArray max:^NSComparisonResult(id max, id obj) {
        return [max compare:obj];
    }];
    calculator_ = [[OCCalculator alloc] init];
    DooBar *barbo = [[DooBar alloc] initWithFoo:@"alfonso" bar:@"bonso"];
    [barbo concat];
    [Bronto doStuff];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addNumbers:(id)sender {
    calculator_.leftOperand = [self.leftOperand.text intValue];
    calculator_.rightOperand = [self.rightOperand.text intValue];
    
    self.result.text = [@([calculator_ addOperands]) stringValue];
}
- (IBAction)substractNumbers:(id)sender {
    calculator_.leftOperand = [self.leftOperand.text intValue];
    calculator_.rightOperand = [self.rightOperand.text intValue];
    
    self.result.text = [@([calculator_ substractOperands]) stringValue];
}

@end