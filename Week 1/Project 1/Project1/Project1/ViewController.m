//
//  ViewController.m
//  Project1
//
//  Created by Annis Dan on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    myArray = [[NSMutableArray alloc] initWithObjects:
                 @"1",
                 @"2",
                 @"3",
                 @"4",
                 @"5",
                 @"6",
                 @"7",
                 @"8",
                 @"9",
                 @"10",
                 @"11",
                 @"12",
                 @"13",
                 @"14",
                 @"15",
                 @"16",
                 @"17",
                 @"18",
                 @"19",
                 @"20",
                 nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        //Not needed with Custom Cell Creation
        //cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if([view isKindOfClass:[CustomTableCell class]])
            {
                cell.contentView.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"customcell.png"]];
                cell = (CustomTableCell*)view;
                cell.textLabel.text = (NSString*)[myArray objectAtIndex:indexPath.row];
              
            }
        }
    }
    cell.textLabel.text=(NSString*)[myArray objectAtIndex:indexPath.row];
    
    return cell;
}

@end
