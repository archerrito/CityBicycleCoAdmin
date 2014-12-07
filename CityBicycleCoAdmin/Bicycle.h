//
//  Bicycle.h
//  CityBicycleCoAdmin
//
//  Created by Supreme Overlord on 12/6/14.
//  Copyright (c) 2014 Supreme Overlord. All rights reserved.
//

#import <Parse/Parse.h>

@interface Bicycle : PFObject

@property NSArray *wheelsetColor;
@property NSString *coordinatePosition;
@property NSString *bicycleDescription;
@property NSArray *handleBars;
@property BOOL hasAluminumAlloy;
@property BOOL hasRearBreak;
@property BOOL isOnSale;
@property NSString *name;
@property NSNumber *originalPrice;
@property NSString *pedalStrap;
@property NSNumber *quantity;
@property NSNumber *saleDetail;
@property NSNumber *salePrice;
@property NSArray *size;
@property PFFile *bicyclePhoto;
@property NSArray *extraWheel;

@end
