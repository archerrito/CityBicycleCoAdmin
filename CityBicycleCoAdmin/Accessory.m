//
//  Accessory.m
//  CityBicycleCoAdmin
//
//  Created by Supreme Overlord on 12/6/14.
//  Copyright (c) 2014 Supreme Overlord. All rights reserved.
//

#import "Accessory.h"

@implementation Accessory

@dynamic name;
@dynamic color;
@dynamic accessoryDescription;
@dynamic detailSale;
@dynamic accessoryPhoto;
@dynamic originalPrice;
@dynamic quantity;
@dynamic salePrice;
@dynamic size;

+ (void) load
{
    [self registerSubclass];
}

+ (NSString *)parseClassName
{
    return @"Accessory";
}
@end
