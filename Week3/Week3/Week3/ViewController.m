//
//  ViewController.m
//  Week3
//
//  Created by Annis Dan on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface ViewController ()

@end

@implementation ViewController{
    NSArray *searchResults;
}
@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];    
    
    NSString *myListPath = [[NSBundle mainBundle] pathForResource:@"m" ofType:@"plist"];
    tableData = [[NSMutableArray alloc] initWithContentsOfFile:myListPath];
  //  NSLog(@"%@",tableData);
    
    
    //Add the Edit Button and call the method Edit:
    UIBarButtonItem *EditButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(Edit:)];
    self.navigationItem.rightBarButtonItem = EditButton;
    
    
}


- (void)viewDidUnload
{
   
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchResults count];
        
    } else {
      
        return [tableData count];
        
    }
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        [self performSegueWithIdentifier: @"showDetailView" sender: self];        
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SurvivorCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        cell.textLabel.text = [[searchResults objectAtIndex:indexPath.row] objectForKey:@"fullName"];
    } else {
        cell.textLabel.text = [[tableData objectAtIndex:indexPath.row] objectForKey:@"fullName"];
        
        
    }
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showDetailView"]) {
        DetailViewController *destViewController = segue.destinationViewController;
        
        NSIndexPath *indexPath = nil;
        
        if ([self.searchDisplayController isActive]) {
            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            destViewController.nameName = [[searchResults objectAtIndex:indexPath.row] objectForKey:@"fullName"];
            NSString *city = [[tableData objectAtIndex:indexPath.row] objectForKey:@"city"];
            NSString *state = [[tableData objectAtIndex:indexPath.row] objectForKey:@"state"];
            NSString *fullLocation =  [NSString stringWithFormat:@"%@, %@",city,state];
            destViewController.stateName = fullLocation;
            destViewController.title = [[tableData objectAtIndex:indexPath.row] objectForKey:@"fullName"];
           
            // Hide bottom tab bar in the detail view
           destViewController.hidesBottomBarWhenPushed = YES;
            
        } else {
           
            indexPath = [self.tableView indexPathForSelectedRow];
            NSString *city = [[tableData objectAtIndex:indexPath.row] objectForKey:@"city"];
            NSString *state = [[tableData objectAtIndex:indexPath.row] objectForKey:@"state"];
            NSString *lat = [[tableData objectAtIndex:indexPath.row] objectForKey:@"lattitude"];
            NSString *lon = [[tableData objectAtIndex:indexPath.row] objectForKey:@"longitude"];
            NSString *fullLocation =  [NSString stringWithFormat:@"%@, %@",city,state];
            NSString *fullLatLon =  [NSString stringWithFormat:@"%@, %@",lat,lon];
            destViewController.stateName = fullLocation;
            destViewController.latlonName = fullLatLon;
            destViewController.coord = CLLocationCoordinate2DMake([lat floatValue],[lon floatValue]);
            destViewController.title = [[tableData objectAtIndex:indexPath.row] objectForKey:@"fullName"];
           // destViewController.nameName;
            
            // Hide bottom tab bar in the detail view
            destViewController.hidesBottomBarWhenPushed = YES;
        }
    }
    
    
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableData removeObjectAtIndex:indexPath.row];

    [tableView reloadData];
}

- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    NSPredicate *resultPredicate = [NSPredicate
                                    predicateWithFormat:@"SELF contains[cd] %@",
                                    searchText];
    
    searchResults = [tableData filteredArrayUsingPredicate:resultPredicate];
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller
shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}

- (IBAction)Edit:(id)sender
{
    if (tableView.editing == NO)
    {
        [tableView setEditing:YES];
    }
    else
        [tableView setEditing:NO];
}

@end
