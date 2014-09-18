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

- (void)viewDidLayoutSubviews {
    // IMPORTANT: Must set this one. This determines the size of the area that the scrollview
    // is just showing a subset of. So when scrolling we decide which part of the area we are showing.
    // The larger the frame property of the scrollview is the more of the content we see.
    // setContentOffset will work without specifying this but scrollRectToVisible won't
    self.scrollView.contentSize = CGSizeMake(320, 327);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)scrollWithOffset:(id)sender {
    [_scrollView setContentOffset:CGPointMake(0, 50) animated:YES];
}

- (IBAction)scrollToRect:(id)sender {
    //    [_scrollView scrollRectToVisible:self.switchButton.frame animated:YES];

    [_scrollView scrollRectToVisible:self.switchButton.frame animated:YES];

}

- (IBAction)scrollItBack:(id)sender {
    [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
}

@end
