//
//  Photo.m
//  CityBicycleCoAdmin
//
//  Created by Supreme Overlord on 12/6/14.
//  Copyright (c) 2014 Supreme Overlord. All rights reserved.
//

#import "Photo.h"

@implementation Photo

@dynamic productPhoto;
@dynamic bicycle;
@dynamic accessory;

+ (void)load
{
    [self registerSubclass];
}

+ (NSString *) parseClassName
{
    return @"Photo";
}


@end
