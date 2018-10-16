//
//  ViewController.h
//  Digital_Clock
//
//  Created by ove on 15/9/18.
//  Copyright © 2018 ove. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *timer;
}
@property (strong, nonatomic) IBOutlet UILabel *clocklabel;

@property (strong, nonatomic) IBOutlet UIView *settingsview;
@property (strong, nonatomic) IBOutlet UIButton *settingButton;
- (IBAction)buttonAction:(id)sender;
- (IBAction)clockseg:(id)sender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *backseg;
@property (strong, nonatomic) IBOutlet UISegmentedControl *colorseg;
- (IBAction)backseg:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *background;

@end

