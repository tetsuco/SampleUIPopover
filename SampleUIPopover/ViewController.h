//
//  ViewController.h
//  SampleUIPopover
//
//  Created by  on 11/11/01.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PickerViewController.h"

@interface ViewController : UIViewController <UIPopoverControllerDelegate> {
    
}

@property (strong, nonatomic) UIPopoverController *popOver;

@end
