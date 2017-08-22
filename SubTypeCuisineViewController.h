//
//  SubTypeCuisineViewController.h
//  Pepperazzi_App
//
//  Created by Akshita on 16/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSONTableViewController.h"

@interface SubTypeCuisineViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *soupbtn;
@property (strong, nonatomic) IBOutlet UIButton *saladbtn;
@property (strong, nonatomic) IBOutlet UIButton *starterbtn;
@property (strong, nonatomic) IBOutlet UIButton *maincoursebtn;

-(IBAction)souppressed:(id)sender;
-(IBAction)saladpressed:(id)sender;
-(IBAction)starterpressed:(id)sender;
-(IBAction)maincoursepressed:(id)sender;

@property NSString *cuisinename1;

@end
