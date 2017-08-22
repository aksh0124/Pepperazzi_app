//
//  TypeCuisineViewController.m
//  Pepperazzi_App
//
//  Created by Akshita on 16/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "TypeCuisineViewController.h"

@interface TypeCuisineViewController ()
{
    SubTypeCuisineViewController *stcvc;
}

@end

@implementation TypeCuisineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.mexicanbtn  setTitle:@"Mexican" forState:UIControlStateNormal];
    [self.westernbtn  setTitle:@"Western" forState:UIControlStateNormal];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    
    // Dispose of any resources that can be recreated.
}

-(IBAction)mexicanpressed:(id)sender
{
   
}

-(IBAction)italianpressed:(id)sender
{
    
}

-(IBAction)westernpressed:(id)sender
{
   /* UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    stcvc = [mainStoryboard instantiateViewControllerWithIdentifier:@"subtypecuisine"];
    
    stcvc.cuisinename1 = self.westernbtn.titleLabel.text;
    NSLog(@"%@", stcvc.cuisinename1);
    [self presentViewController:stcvc animated:YES completion:nil];*/
    
      stcvc.cuisinename1 = self.westernbtn.titleLabel.text;
    
}

-(IBAction)indianpressed:(id)sender
{
    
}

-(IBAction)panasianpressed:(id)sender
{
    
}

-(IBAction)lebanonpressed:(id)sender
{
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"mexican_segue"])
    {
        stcvc = [segue destinationViewController];
        stcvc.cuisinename1 = self.mexicanbtn.titleLabel.text;
        NSLog(@"%@", stcvc.cuisinename1);
    }
    if ([[segue identifier] isEqualToString:@"italian_segue"])
    {
        stcvc = [segue destinationViewController];
        stcvc.cuisinename1 = self.italianbtn.titleLabel.text;
        NSLog(@"%@", stcvc.cuisinename1);
    }
    if ([[segue identifier] isEqualToString:@"western_segue"])
    {
        stcvc = [segue destinationViewController];
        stcvc.cuisinename1 = self.westernbtn.titleLabel.text;
        NSLog(@"%@", stcvc.cuisinename1);
    }
    if ([[segue identifier] isEqualToString:@"indian_segue"])
    {
        stcvc = [segue destinationViewController];
        stcvc.cuisinename1 = self.indianbtn.titleLabel.text;
        NSLog(@"%@", stcvc.cuisinename1);
    }
    if ([[segue identifier] isEqualToString:@"panasian_segue"])
    {
        stcvc = [segue destinationViewController];
        stcvc.cuisinename1 = self.panasianbtn.titleLabel.text;
        NSLog(@"%@", stcvc.cuisinename1);
    }
    if ([[segue identifier] isEqualToString:@"lebanon_segue"])
    {
        stcvc = [segue destinationViewController];
        stcvc.cuisinename1 = self.lebanonbtn.titleLabel.text;
        NSLog(@"%@", stcvc.cuisinename1);
    }
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
