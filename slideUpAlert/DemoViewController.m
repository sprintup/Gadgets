//
//  DemoViewController.m
//  slideUpAlert
//
//  Created by Stephen R Printup on 2/11/16.
//  Copyright © 2016 Stephen R Printup. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void) putViewInInitialPosition
{
}

- (IBAction)buttonDemo:(id)sender {
    [UIView animateWithDuration:1.0f animations:^{
        self.ViewSavedToHealthKit.frame = CGRectMake(0.0, self.ViewSavedToHealthKit.frame.origin.y - 75,self.ViewSavedToHealthKit.frame.size.width,self.ViewSavedToHealthKit.frame.size.height);
    } completion:^(BOOL finished) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [UIView animateWithDuration:1.0f animations:^{
                self.ViewSavedToHealthKit.frame = CGRectMake(0.0, self.ViewSavedToHealthKit.frame.origin.y + 75,self.ViewSavedToHealthKit.frame.size.width,self.ViewSavedToHealthKit.frame.size.height);
            }];
        });
    }];
}

@end
