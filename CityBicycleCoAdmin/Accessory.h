//
//  Accessory.h
//  CityBicycleCoAdmin
//
//  Created by Supreme Overlord on 12/6/14.
//  Copyright (c) 2014 Supreme Overlord. All rights reserved.
//

#import <Parse/Parse.h>

@interface Accessory : PFObject

@property NSArray *color;
@property NSString *accessoryDescription;
@property NSString *detailSale;
@property NSString *name;
@property NSNumber *originalPrice;
@property NSNumber *quantity;
@property NSNumber *salePrice;
@property NSArray *size;
//@property Photo *accessoryPhoto;
@property PFFile *accessoryPhoto;

@end
