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
NSMutableArray *memesArr;
BOOL spcialEffect;

//NSTimer *repeadEveryFewSecond;

@implementation ViewController
/*
 UIImage *image = [UIImage imageNamed:@"bloodymoon.jpg"];
 imageHolder.image = image;
 */


//MARK: - Life Cycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    [self presetArray];
    [self timer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}
//MARK: - Interactivity Methods

//1. preset Array
-(void)presetArray{
    NSDictionary *meme1 = @{@"Image" : [UIImage imageNamed:@"1.png"],
                            @"Quote" : @"Only character in Game of Thrones to died of old age",
                            @"Special effects" : @NO,
                            };
    NSDictionary *meme2 = @{@"Image" : [UIImage imageNamed:@"2.jpg"],
                            @"Quote" : @"The best kiler in game of Thrones?",
                            @"Special effects" : @NO,
                            };
    NSDictionary *meme3 = @{@"Image" : [UIImage imageNamed:@"3.png"],
                            @"Quote" : @"I heard the party died after I left",
                            @"Special effects" : @NO,
                            };
    memesArr = [NSMutableArray arrayWithObjects:meme1, meme2, meme3, nil];
}


-(void)showRandomMeme{
    self.quoteLabel.textColor = [UIColor whiteColor];
    int r = arc4random_uniform((uint32_t) memesArr.count);
    printf("%d is the chosen number",r);
    NSDictionary *chosenMeme = memesArr[r];
    self.quoteLabel.text = chosenMeme[@"Quote"];
    self.imageView.image = chosenMeme[@"Image"];
}

-(void)timer{
    NSTimer *repeadEveryFewSecond = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(showRandomMeme) userInfo:nil repeats:YES];
    
//    NSTimer *repeadEveryFewSecond = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector([self showRandomMeme)] userInfo:nil repeats:YES];
}
//



@end
