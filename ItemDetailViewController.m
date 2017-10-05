//
//  ItemDetailViewController.m
//  Pepperazzi_App
//
//  Created by Akshita on 29/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "ItemDetailViewController.h"


@implementation ItemDetailViewController
@synthesize itemname,itemtype,name,type;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    itemname.text = name;
    itemtype.text = type;
    
    self.stepper.minimumValue = 0;
    self.stepper.maximumValue = 100;
    self.stepper.autorepeat = YES;
    self.stepper.continuous = YES;
    self.SPLabel.text = [NSString stringWithFormat:@"%d",0];
   // [self stepperClicked];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stepperClicked:(id)sender
{
    int stpvalue = self.stepper.value;
    self.SPLabel.text = [NSString stringWithFormat:@"%d",stpvalue];
}
@end
