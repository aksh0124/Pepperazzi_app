//
//  ViewController.h
//  Pepperazzi_App
//
//  Created by Akshita on 16/08/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"
#import "TypeCuisineViewController.h"

@interface ViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionview;

@end

