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
                 @"Dan",
                 @"Emily",
                 @"Alex",
                 @"Makenzie",
                 @"Chris",
                 @"Sarah",
                 @"Natalie",
                 @"Kate",
                 @"Max",
                 @"Angela",
                 @"Bobby",
                 @"Issac",
                 @"Dominick",
                 @"Lucas",
                 @"Anthony",
                 @"Andrew",
                 @"Stephanie",
                 @"Lynn",
                 @"Ken",
                 @"Tina",
                 @"Jeff",
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


- (IBAction)Edit:(id)sender
{
    if (tableView.editing == NO)
    {
        [tableView setEditing:YES];
    }
    else
        [tableView setEditing:NO];
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"Deleted row - %@", [myArray objectAtIndex:indexPath.row]);
        [myArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [myArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text=(NSString*)[myArray objectAtIndex:indexPath.row];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Index Row = %d Index name= %@",indexPath.row, [myArray objectAtIndex:indexPath.row]);
}


@end
