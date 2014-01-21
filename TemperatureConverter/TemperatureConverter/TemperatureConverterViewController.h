//
//  TemperatureConverterViewController.h
//  TemperatureConverter
//
//  Created by Pia on 1/16/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemperatureConverterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *fSliderLabel;
@property (weak, nonatomic) IBOutlet UILabel *cSliderLabel;

@property(weak, nonatomic) IBOutlet UISlider* fahrenheitSlider;
@property(weak, nonatomic) IBOutlet UISlider* celsiusSlider;

@end
