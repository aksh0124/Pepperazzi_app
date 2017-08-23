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
    
//    TypeCuisineViewController *tcvc;
//    SubTypeCuisineViewController *stcvc;
    
  /*  tcvc.westernbtn = cuisinename;
    stcvc.soupbtn = categoryname; */
    
  //  cuisinename = stcvc.cuisinename1;
    
    
    NSLog(@"%@",cuisinename);
    NSLog(@"%@",categoryname);
    
    self.title = @"Dishes";
    
/*    NSError *error;
    NSString *url_string = [NSString stringWithFormat:@"http://anantsoftcomputing.com/pepperazzi_app/disheslist.php?format=json&cuisinename=%@&categoryname=%@",cuisinename,categoryname];
 
    NSData *data1 = [NSData dataWithContentsOfURL:[NSURL URLWithString:url_string]];
    NSMutableArray *JSON = [NSJSONSerialization JSONObjectWithData:data1 options:kNilOptions error:&error];

    NSLog(@"json data are: %@",JSON);
    */
    
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
 //   cell.detailTextLabel.text = dishesObject.Item_Type;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

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
