//
//  DishesList.m
//  Pepperazzi_App
//
//  Created by Akshita on 23/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "DishesList.h"

@implementation DishesList

@synthesize Item_Name,Item_Type;

-(id)initWithItem_Name: (NSString *)IName andItem_Type: (NSString *)IType
{
    self = [super init];
    if (self)
    {
        Item_Name = IName;
        Item_Type = IType;
    }
    return self;
}

@end
