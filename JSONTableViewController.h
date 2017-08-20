//
//  JSONTableViewController.h
//  Pepperazzi_App
//
//  Created by Akshita on 19/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSONTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *jsonarray;
@property (nonatomic, strong) NSMutableArray *dishesarray;

@property (strong, nonatomic) IBOutlet UITableView *dishestable;

@property NSString *tablename;
@property NSString *categoryname;

@end
