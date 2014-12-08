//
//  EditBicycleViewController.m
//  CityBicycleCoAdmin
//
//  Created by Supreme Overlord on 12/7/14.
//  Copyright (c) 2014 Supreme Overlord. All rights reserved.
//

#import "EditBicycleViewController.h"

@interface EditBicycleViewController ()<UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate, UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *bicycleTableView;

@property NSArray *bicycleImagesArray;
@property (strong, nonatomic) IBOutlet UIImageView *mainBicycleImage;
@property (strong, nonatomic) IBOutlet UITextField *bicycleNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *bicycleCoordinatePositionTextField;
@property (strong, nonatomic) IBOutlet UITextView *bicycleDescriptionTextView;
@property (strong, nonatomic) IBOutlet UITextField *bicycleOriginalPriceTextField;
@property (strong, nonatomic) IBOutlet UISwitch *isBicycleOnSaleSwitch;
@property (strong, nonatomic) IBOutlet UITextField *bicycleSalePriceTextField;
@property (strong, nonatomic) IBOutlet UITextView *bicycleSaleDescriptionTextView;


@end

@implementation EditBicycleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bicycleImagesArray = [NSArray array];

}

-(void)updateBicycleInfoWithDataFromParse
{
    self.bicycleNameTextField.text = self.bicycleFromParse.name;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.bicycleImagesArray.count;
}

@end
