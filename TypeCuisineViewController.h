//
//  TypeCuisineViewController.h
//  Pepperazzi_App
//
//  Created by Akshita on 16/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSONTableViewController.h"

@interface TypeCuisineViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *mexicanbtn;
@property (strong, nonatomic) IBOutlet UIButton *italianbtn;
@property (strong, nonatomic) IBOutlet UIButton *westernbtn;
@property (strong, nonatomic) IBOutlet UIButton *indianbtn;
@property (strong, nonatomic) IBOutlet UIButton *panasianbtn;
@property (strong, nonatomic) IBOutlet UIButton *lebanonbtn;



-(IBAction)mexicanpressed:(id)sender;
-(IBAction)italianpressed:(id)sender;
-(IBAction)westernpressed:(id)sender;
-(IBAction)indianpressed:(id)sender;
-(IBAction)panasianpressed:(id)sender;
-(IBAction)lebanonpressed:(id)sender;

@end
