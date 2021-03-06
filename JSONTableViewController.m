//
//  JSONTableViewController.m
//  Pepperazzi_App
//
//  Created by Akshita on 19/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "JSONTableViewController.h"
#import "DishesList.h"

@interface JSONTableViewController ()

@end

@implementation JSONTableViewController

@synthesize cuisinename,categoryname,jsonarray,dishesarray;

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.title = @"Dishes";
    
    [self retriveData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return dishesarray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    DishesList *dishesObject;
    dishesObject = [dishesarray objectAtIndex:indexPath.row];
   
    cell.textLabel.text = dishesObject.Item_Name;
    cell.detailTextLabel.text = dishesObject.Item_Type;

    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ItemDetailViewController *idvc = [[ItemDetailViewController alloc]init];
    
    DishesList *detail = [dishesarray objectAtIndex:indexPath.row];
    idvc.name = detail.Item_Name;
    idvc.type = detail.Item_Type;
    
    [self.navigationController pushViewController:idvc animated:YES];
    
}

-(void) retriveData
{
    NSError *error;
    NSString *url_string = [NSString stringWithFormat:@"http://anantsoftcomputing.com/pepperazzi_app/disheslist.php?format=json&cuisinename=%@&categoryname=%@",cuisinename,categoryname];
    
    NSData *data1 = [NSData dataWithContentsOfURL:[NSURL URLWithString:url_string]];
    
   jsonarray = [NSJSONSerialization JSONObjectWithData:data1 options:kNilOptions error:&error];
    
    NSLog(@"json data are: %@",jsonarray);
    
    dishesarray = [[NSMutableArray alloc]init];
    
    for(int i=0; i<jsonarray.count; i++)
    {
        NSString *IName = [[jsonarray objectAtIndex:i] objectForKey:@"item_name"];
        NSString *IType = [[jsonarray objectAtIndex:i] objectForKey:@"item_type"];
        
        [dishesarray addObject:[[DishesList alloc]initWithItem_Name:IName andItem_Type:IType]];
    }
        
    [self.dishestable reloadData];
    
}


@end
