//
//  ViewController.m
//  AvoidHidingFromKeyboard
//
//  Created by Erik Engheim on 18/09/14.
//  Copyright (c) 2014 Translusion. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UISwitch *switchButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)scrollMe:(id)sender {
//    [_scrollView scrollRectToVisible:self.switchButton.frame animated:YES];
    [_scrollView setContentOffset:CGPointMake(0, 50) animated:YES];

}

- (IBAction)scrollItBack:(id)sender {
    [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
}

@end
