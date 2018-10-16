//
//  ViewController.m
//  Digital_Clock
//
//  Created by ove on 15/9/18.
//  Copyright © 2018 ove. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateTimer];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    
    self.settingsview.hidden = YES;
    self.settingButton.alpha = 0.25;
}

-(void)updateTimer{
    
    NSDateFormatter *setTime = [[NSDateFormatter alloc]init];
    [setTime setDateFormat:@"hh:mm:ss"];
    self.clocklabel.text = [setTime stringFromDate:[NSDate date]];
    
}





- (IBAction)buttonAction:(id)sender {
    
    if(self.settingsview.hidden==YES)
    {
        self.settingsview.hidden = NO;
        self.settingButton.alpha=1.0;
    }
    else {
        self.settingsview.hidden= YES;
        self.settingButton.alpha=0.25;
    }
  

}



- (IBAction)clockseg:(id)sender {
    
   
    if(self.colorseg.selectedSegmentIndex == 0)
    {
        self.clocklabel.textColor=[UIColor redColor];
    }
    
    if(self.colorseg.selectedSegmentIndex == 1)
    {
        self.clocklabel.textColor =[UIColor blueColor];
    }
    
    if(self.colorseg.selectedSegmentIndex == 2)
    {
        self.clocklabel.textColor=[UIColor greenColor];
    }
    
                                    
    if(self.colorseg.selectedSegmentIndex == 3)
    {
    self.clocklabel.textColor =[UIColor blackColor];
    }
                                    
                                
    
}


- (IBAction)backseg:(id)sender {
    
    if(self.backseg.selectedSegmentIndex == 0)
    {
        self.background.image = [UIImage imageNamed:@"1"];
    }
    
    if(self.backseg.selectedSegmentIndex == 1)
    {
       self.background.image = [UIImage imageNamed:@"3"];
    }
    
    if(self.backseg.selectedSegmentIndex == 2)
    {
      self.background.image = [UIImage imageNamed:@"4"];
    }
    
    
    if(self.backseg.selectedSegmentIndex == 3)
    {
        self.background.image = [UIImage imageNamed:@"5"];
    }
    
}
@end
