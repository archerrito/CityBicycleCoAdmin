//
//  Photo.h
//  CityBicycleCoAdmin
//
//  Created by Supreme Overlord on 12/6/14.
//  Copyright (c) 2014 Supreme Overlord. All rights reserved.
//

#import <Parse/Parse.h>
#import "Bicycle.h"
#import "Accessory.h"

@interface Photo : PFObject

@property PFFile *productPhoto;
@property Bicycle *bicycle;
@property Accessory *accessory;

@end
