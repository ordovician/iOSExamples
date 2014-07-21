//
//  DetailViewController.h
//  TableViewExample
//
//  Created by Erik Engheim on 21/07/14.
//  Copyright (c) 2014 Knowit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
