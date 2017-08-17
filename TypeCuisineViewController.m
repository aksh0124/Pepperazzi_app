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
    
    [ self buttonpressed:nil];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonpressed:(id)sender
{
    if([_italianbtn isSelected])
    {
        [_soupbtn setUserInteractionEnabled:NO];
        [_saladbtn setUserInteractionEnabled:NO];
    }
    else if ([_westernbtn isSelected])
    {
        [_starterbtn setEnabled:NO];
        [_maincoursebtn setEnabled:NO];
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
