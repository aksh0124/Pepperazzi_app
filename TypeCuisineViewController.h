//
//  TypeCuisineViewController.h
//  Pepperazzi_App
//
//  Created by Akshita on 16/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TypeCuisineViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *italianbtn;
@property (strong, nonatomic) IBOutlet UIButton *westernbtn;

@property (strong, nonatomic) IBOutlet UIButton *soupbtn;
@property (strong, nonatomic) IBOutlet UIButton *saladbtn;
@property (strong, nonatomic) IBOutlet UIButton *starterbtn;
@property (strong, nonatomic) IBOutlet UIButton *maincoursebtn;

-(IBAction)buttonpressed:(id)sender;

@end
