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
    
     [self.soupbtn  setTitle:@"Soup" forState:UIControlStateNormal];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)souppressed:(id)sender
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
 jtvc = [mainStoryboard instantiateViewControllerWithIdentifier:@"tableview1"];
   //  jtvc.cuisinename = tvc.westernbtn.titleLabel.text;
    jtvc.cuisinename =  _cuisinename1;
    jtvc.categoryname = self.soupbtn.titleLabel.text;
    NSLog(@"%@", jtvc.categoryname);
   [self presentViewController:jtvc animated:YES completion:nil];
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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
