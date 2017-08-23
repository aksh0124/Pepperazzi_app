//
//  JSONTableViewController.h
//  Pepperazzi_App
//
//  Created by Akshita on 19/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TypeCuisineViewController.h"
#import "SubTypeCuisineViewController.h"

@interface JSONTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *jsonarray;
@property (nonatomic, strong) NSMutableArray *dishesarray;

@property (strong, nonatomic) IBOutlet UITableView *dishestable;

@property NSString *cuisinename;
@property NSString *categoryname;

-(void) retriveData;

@end
