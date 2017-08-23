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
   // TypeCuisineViewController *tvc;
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
        NSLog(@"%@", jtvc.cuisinename);
         NSLog(@"%@", jtvc.categoryname);
    }
    if ([[segue identifier] isEqualToString:@"salad_segue"])
    {
        jtvc = [segue destinationViewController];
        jtvc.cuisinename =  _cuisinename1;
        jtvc.categoryname = self.saladbtn.titleLabel.text;
        NSLog(@"%@", jtvc.cuisinename);
        NSLog(@"%@", jtvc.categoryname);
    }
    if ([[segue identifier] isEqualToString:@"starter_segue"])
    {
        jtvc = [segue destinationViewController];
        jtvc.cuisinename =  _cuisinename1;
        jtvc.categoryname = self.starterbtn.titleLabel.text;
        NSLog(@"%@", jtvc.cuisinename);
        NSLog(@"%@", jtvc.categoryname);
    }
    if ([[segue identifier] isEqualToString:@"maincourse_segue"])
    {
        jtvc = [segue destinationViewController];
        jtvc.cuisinename =  _cuisinename1;
        jtvc.categoryname = self.maincoursebtn.titleLabel.text;
        NSLog(@"%@", jtvc.cuisinename);
        NSLog(@"%@", jtvc.categoryname);
    }
}


-(IBAction)souppressed:(id)sender
{
    /*  UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
     jtvc = [mainStoryboard instantiateViewControllerWithIdentifier:@"tableview1"];
     
     jtvc.cuisinename =  _cuisinename1;
     jtvc.categoryname = self.soupbtn.titleLabel.text;
     NSLog(@"%@", jtvc.categoryname);
     NSLog(@"%@", jtvc.cuisinename);
     //   [self presentViewController:jtvc animated:YES completion:nil];
     */
}
-(IBAction)saladpressed:(id)sender
{
    /*  UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
     jtvc = [mainStoryboard instantiateViewControllerWithIdentifier:@"tableview1"];
     
     jtvc.cuisinename =  _cuisinename1;
     jtvc.categoryname = self.saladbtn.titleLabel.text;
     NSLog(@"%@", jtvc.categoryname);
     */
}
-(IBAction)starterpressed:(id)sender
{
    /*   UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
     jtvc = [mainStoryboard instantiateViewControllerWithIdentifier:@"tableview1"];
     
     jtvc.cuisinename =  _cuisinename1;
     jtvc.categoryname = self.starterbtn.titleLabel.text;
     NSLog(@"%@", jtvc.categoryname);
     */
}
-(IBAction)maincoursepressed:(id)sender
{
    /*  UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
     jtvc = [mainStoryboard instantiateViewControllerWithIdentifier:@"tableview1"];
     
     jtvc.cuisinename =  _cuisinename1;
     jtvc.categoryname = self.maincoursebtn.titleLabel.text;
     NSLog(@"%@", jtvc.categoryname);
     */
}

@end
