//
//  OrderListViewController.m
//  Pepperazzi_App
//
//  Created by Akshita on 05/10/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "OrderListViewController.h"
#import "ItemDetailViewController.h"
@interface OrderListViewController ()

@end

@implementation OrderListViewController
{
    ItemDetailViewController *idvc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [idvc setArray1:_name_arr];
    [idvc setArray2:_quan_arr];
    self.dict = [NSDictionary dictionaryWithObjects:_name_arr forKeys:_quan_arr];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.name_arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:CellIdentifier];
    }
   
  //  NSString *str_name = [self.dict objectForKey:@"name"];
 //   NSString *str_quan = [self.dict objectForKey:@"quantity"];
/*    NSString *str_name = [_name_arr objectAtIndex:indexPath.row];
    NSString *str_quan = [_quan_arr objectAtIndex:indexPath.row];
    cell.textLabel.text = str_name;
    cell.detailTextLabel.text = str_quan;
    */
 //   cell.textLabel.text = self.name_arr[indexPath.row];
 //   cell.detailTextLabel.text = self.quan_arr[indexPath.row];
    NSString *key = [self.dict allKeys][indexPath.row];
    NSString *obj = [self.dict allValues][indexPath.row];
    
    cell.textLabel.text  = [_dict objectforkey:@"obj"] objectAtIndex:indexpath.row];
    cell.detailTextLabel.text  = [_dict objectforkey:@"key"] objectAtIndex:indexpath.row];
    
    return cell;
    
}

@end
