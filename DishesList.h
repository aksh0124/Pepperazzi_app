//
//  DishesList.h
//  Pepperazzi_App
//
//  Created by Akshita on 23/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DishesList : NSObject

@property (strong,nonatomic) NSString *Item_Name;
@property (strong,nonatomic) NSString *Item_Type;

-(id)initWithItem_Name: (NSString *)IName andItem_Type: (NSString *)IType;

@end
