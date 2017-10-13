//
//  ItemDetailViewController.m
//  Pepperazzi_App
//
//  Created by Akshita on 29/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "ItemDetailViewController.h"


@implementation ItemDetailViewController
@synthesize itemname,itemtype,name,type;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    itemname.text = name;
    itemtype.text = type;
    
    self.stepper.minimumValue = 0;
    self.stepper.maximumValue = 100;
    self.stepper.autorepeat = YES;
    self.stepper.continuous = YES;
    self.SPLabel.text = [NSString stringWithFormat:@"%d",0];
   // [self stepperClicked];
    
    _array1 = [[NSMutableArray alloc]init];
    _array2 = [[NSMutableArray alloc]init];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stepperClicked:(id)sender
{
    int stpvalue = self.stepper.value;
    self.SPLabel.text = [NSString stringWithFormat:@"%d",stpvalue];
}

- (IBAction)proceedbtn:(id)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    OrderListViewController *olvc = [[OrderListViewController alloc]init];
    olvc = [storyboard instantiateViewControllerWithIdentifier:@"order_list"];
 
    [olvc setName_arr:_array1];
    [olvc setQuan_arr:_array2];
    
    NSLog(@"%@%@",_array1,_array2);
    NSLog(@"vc namemarray %lu",(unsigned long)olvc.name_arr.count);
    
    NSLog(@"vc namemarray %lu",(unsigned long)olvc.quan_arr.count);
    
    NSLog(@"name: %lu",(unsigned long)self.array1.count);
    
    NSLog(@"quanty: %lu",(unsigned long)self.array2.count);
    [self.navigationController pushViewController:olvc animated:YES];
   
}

- (IBAction)addbtn:(id)sender
{
    self.str1 = self.itemname.text;
    self.str2 = self.SPLabel.text;
    
    [self.array1 addObject:self.str1];
    [self.array2 addObject:self.str2];
    
   // self.itemname.text = @"";
  //  self.SPLabel.text = @"";
}

@end
