//
//  ViewController.m
//  funQuote
//
//  Created by ling toby on 5/24/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

/*
 Create an app that meets the following requirements:
 Your app should display a humorous, random, or motivational quote on the screen
 The quote should change to a new quote every 5 seconds (5-7 quotes total)
 Each quote should have a random text color
 Each quote should have a random background color
 */

#import "ViewController.h"

@interface ViewController ()


@end
//MARK: - Properties

UIImage *chosenImage;
NSString *chosenQuote;
BOOL spcialEffect;

@implementation ViewController
/*
 UIImage *image = [UIImage imageNamed:@"bloodymoon.jpg"];
 imageHolder.image = image;
 */


//MARK: - Life Cycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}
//MARK: - Interactivity Methods

-(void)presetArray{
    NSDictionary *meme1 = @{@"Image" : [UIImage imageNamed:@"1.png"],
                            @"Quote" : @[ @"Only character in Game of Thrones to died of old age"],
                            @"Special effects" : @NO,
                            };
    NSMutableArray *memesArr = [NSMutableArray arrayWithObjects:meme1, nil];

}



@end
