//
//  OrderListViewController.h
//  Pepperazzi_App
//
//  Created by Akshita on 05/10/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *table_view;

@property NSMutableArray *name_arr;
@property NSMutableArray *quan_arr;
@property NSDictionary *dict;

@end
