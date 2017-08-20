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
    UIButton *button;
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
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    JSONTableViewController *jtvc = [mainStoryboard instantiateViewControllerWithIdentifier:@"TableView1"];
    
    jtvc.tablename = self.mexicanbtn.titleLabel.text;
    NSLog(@"%@", jtvc.tablename);
    [self presentViewController:jtvc animated:YES completion:nil];
}

-(IBAction)italianpressed:(id)sender
{
    
}

-(IBAction)westernpressed:(id)sender
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    JSONTableViewController *jtvc = [mainStoryboard instantiateViewControllerWithIdentifier:@"TableView1"];
    
    jtvc.tablename = self.westernbtn.titleLabel.text;
    NSLog(@"%@", jtvc.tablename);
    [self presentViewController:jtvc animated:YES completion:nil];
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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
