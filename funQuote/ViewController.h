//
//  ViewController.h
//  funQuote
//
//  Created by ling toby on 5/24/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//
/*
 Your app should display a humorous, random, or motivational quote on the screen
 The quote should change to a new quote every 5 seconds (5-7 quotes total)
 Each quote should have a random text color
 Each quote should have a random background color
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *quoteLabel;


@end

