//
//  TemperatureConverterViewController.m
//  TemperatureConverter
//
//  Created by Pia on 1/16/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import "TemperatureConverterViewController.h"

@interface TemperatureConverterViewController ()

- (IBAction)fValueChanged:(id)sender;
- (IBAction)cValueChanged:(id)sender;

@end

@implementation TemperatureConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id) initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:(aDecoder)];
    if (self) {
        // Custom initialization
        
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.fahrenheitSlider.minimumValue = -130;
    self.fahrenheitSlider.maximumValue = 140;
    
    self.celsiusSlider.minimumValue = -90;
    self.celsiusSlider.maximumValue = 60;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)fValueChanged:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    float fVal = slider.value;
    self.fSliderLabel.text = [NSString stringWithFormat:@"%.1f",fVal];
    
    //Change the value of the celsius label depending on how fahrenheit changes
    float cVal = (fVal - 32) * 5/9;
    self.cSliderLabel.text = [NSString stringWithFormat:@"%.1f", cVal];
    
}

- (IBAction)cValueChanged:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    float cVal = slider.value;
    self.cSliderLabel.text = [NSString stringWithFormat:@"%.1f",cVal];
    
    //Change the value of the fahrenheit label depending on how celsius changes
    float fVal = (cVal * 9/5) + 32;
    self.fSliderLabel.text = [NSString stringWithFormat:@"%.1f", fVal];

}

@end
