//
//  Bicycle.m
//  CityBicycleCoAdmin
//
//  Created by Supreme Overlord on 12/6/14.
//  Copyright (c) 2014 Supreme Overlord. All rights reserved.
//

#import "Bicycle.h"

@implementation Bicycle

@dynamic wheelsetColor;
@dynamic coordinatePosition;
@dynamic bicycleDescription;
@dynamic handleBars;
@dynamic hasAluminumAlloy;
@dynamic hasRearBreak;
@dynamic isOnSale;
@dynamic name;
@dynamic originalPrice;
@dynamic pedalStrap;
@dynamic quantity;
@dynamic saleDetail;
@dynamic salePrice;
@dynamic size;
@dynamic bicyclePhoto;
@dynamic extraWheel;

+ (void)load
{
    [self registerSubclass];
}

+ (NSString *)parseClassName
{
    return @"Bicycle";
}

@end
