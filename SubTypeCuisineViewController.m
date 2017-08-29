//
//  SubTypeCuisineViewController.m
//  Pepperazzi_App
//
//  Created by Akshita on 16/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "SubTypeCuisineViewController.h"


@interface SubTypeCuisineViewController ()
{
       JSONTableViewController *jtvc;
   
}

@end

@implementation SubTypeCuisineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
  //   [self.soupbtn  setTitle:@"Soup" forState:UIControlStateNormal];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"soup_segue"])
    {
        jtvc = [segue destinationViewController];
        jtvc.cuisinename =  _cuisinename1;
        jtvc.categoryname = self.soupbtn.titleLabel.text;
        NSLog(@"%@", jtvc.categoryname);
    }
    if ([[segue identifier] isEqualToString:@"salad_segue"])
    {
        jtvc = [segue destinationViewController];
        jtvc.cuisinename =  _cuisinename1;
        jtvc.categoryname = self.saladbtn.titleLabel.text;
        NSLog(@"%@", jtvc.categoryname);
    }
    if ([[segue identifier] isEqualToString:@"starter_segue"])
    {
        jtvc = [segue destinationViewController];
        jtvc.cuisinename =  _cuisinename1;
        jtvc.categoryname = self.starterbtn.titleLabel.text;
        NSLog(@"%@", jtvc.categoryname);
    }
    if ([[segue identifier] isEqualToString:@"maincourse_segue"])
    {
        jtvc = [segue destinationViewController];
        jtvc.cuisinename =  _cuisinename1;
        jtvc.categoryname = self.maincoursebtn.titleLabel.text;
        NSLog(@"%@", jtvc.categoryname);
    }
}


-(IBAction)souppressed:(id)sender
{
    
}
-(IBAction)saladpressed:(id)sender
{
   
}
-(IBAction)starterpressed:(id)sender
{
    
}
-(IBAction)maincoursepressed:(id)sender
{
   
}

@end
