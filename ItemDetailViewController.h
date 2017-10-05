//
//  ItemDetailViewController.h
//  Pepperazzi_App
//
//  Created by Akshita on 29/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemDetailViewController : UIViewController

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *type;
@property (strong, nonatomic) IBOutlet UILabel *itemname;
@property (strong, nonatomic) IBOutlet UILabel *itemtype;
@property (strong, nonatomic) IBOutlet UILabel *SPLabel;
@property (strong, nonatomic) IBOutlet UIStepper *stepper;
- (IBAction)stepperClicked:(id)sender;

@end
