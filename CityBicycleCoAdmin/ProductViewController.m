//
//  ProductViewController.m
//  CityBicycleCoAdmin
//
//  Created by Supreme Overlord on 12/6/14.
//  Copyright (c) 2014 Supreme Overlord. All rights reserved.
//

#import "ProductViewController.h"
#import "Accessory.h"
#import "Bicycle.h"
#import "EditBicycleViewController.h"
#import "EditAccessoryViewController.h"
#import "AddBicycleViewController.h"
#import "AddAccessoryViewController.h"

#import <Parse/Parse.h>


@interface ProductViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *productTableview;
@property (strong, nonatomic) IBOutlet UISegmentedControl *productSegmentControl;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *addProductTypeBarButtonItem;

//Two Types of products, pick one based on segment control
@property NSArray *currentProductArray;
@property NSArray *bicycleArray;
@property NSArray *accessoryArray;

@end

@implementation ProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self queryAllObjectsFromParse];
}

-(void)queryAllObjectsFromParse
{
    PFQuery *bicycleQuery = [PFQuery queryWithClassName:@"Bicycle"];
    [bicycleQuery findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        } else {
            self.bicycleArray = objects;
            [self refreshTableViewData];
        }
    }];

    PFQuery *accessoryQuery = [PFQuery queryWithClassName:@"Accessory"];
    [accessoryQuery findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        } else {
            self.accessoryArray = objects;
            [self refreshTableViewData];
        }
    }];


}

-(void)refreshTableViewData
{
    if (self.productSegmentControl.selectedSegmentIndex == 0)
    {
        self.currentProductArray = self.bicycleArray;
    }
    else
    {
        self.currentProductArray = self.accessoryArray;
    }

    [self.productTableview reloadData];
}
- (IBAction)onSegmentControlPressed:(UISegmentedControl *)sender
{
    if (self.productSegmentControl.selectedSegmentIndex == 0) {
        self.addProductTypeBarButtonItem.title = @"Add Bicycle";
    } else {
        self.addProductTypeBarButtonItem.title = @"Add Accessory";
    }

    [self refreshTableViewData];
}

- (IBAction)onButtonPressedAddProduct:(id)sender {

    if (self.productSegmentControl.selectedSegmentIndex == 0)
    {
        [self performSegueWithIdentifier:@"addBicycle" sender:sender];
    }
    else
    {
        [self performSegueWithIdentifier:@"addAccessory" sender:sender];
    }

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *productCell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    if (self.productSegmentControl.selectedSegmentIndex == 0)
    {
        Bicycle *bicycle = self.bicycleArray[indexPath.row];
        productCell.textLabel.text = bicycle.name;
    }
    else
    {
        Accessory *accessory = self.accessoryArray[indexPath.row];
        productCell.textLabel.text = accessory.name;
    }


    return productCell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.currentProductArray.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];

    if (self.productSegmentControl.selectedSegmentIndex == 0) {
        [self performSegueWithIdentifier:@"editBicycle" sender:cell];
    } else {
        [self performSegueWithIdentifier:@"editAccessory" sender:cell];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"editBicycle"])
    {

//        UINavigationController *naviVC = [segue destinationViewController];
//        //Because embedded in Nav controller, specify index of child controller
//        EditBicycleViewController *editBicycleVC = naviVC.childViewControllers[0];
//        NSInteger bicycleIndexSelected = [self.productTableview indexPathForCell:sender].row;
//        Bicycle *bicycle = [self.bicycleArray objectAtIndex:bicycleIndexSelected];
//        
//        editBicycleVC.bicycleFromParse = bicycle;


    }
    else if ([segue.identifier isEqualToString:@"editAccessory"])
    {
        EditAccessoryViewController *editAccessoryVC = [segue destinationViewController];
        NSInteger accessoryIndexSelected = [self.productTableview indexPathForCell:sender].row;
        Accessory *accessory = [self.accessoryArray objectAtIndex:accessoryIndexSelected];
        editAccessoryVC.accessoryFromParse = accessory;
    }
}


@end
