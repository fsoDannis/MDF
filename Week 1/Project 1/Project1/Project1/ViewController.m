// MDF Project 1 _ Week 1
//  Created by Dan Annis on 6/28/12.
//  Copyright (c) 2012. All rights reserved.


#import "ViewController.h"
#import "CustomTableCell.h"


@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad
{
    
    detailScreen.frame = CGRectMake(-320.0f, 0.0f, detailScreen.frame.size.width, detailScreen.frame.size.height);
    
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
 
    tableView = nil;
    

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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [myArray count];
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



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
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
    
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.0];
    detailScreen.frame = CGRectMake(0.0f, 0.0f, detailScreen.frame.size.width, detailScreen.frame.size.height);
    
    [UIView commitAnimations];
    
    NSLog(@"Index Row = %d Index name= %@",indexPath.row, [myArray objectAtIndex:indexPath.row]);
    

}


- (IBAction)Done:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.0];

    detailScreen.frame = CGRectMake(-320.0f, 0.0f, detailScreen.frame.size.width, detailScreen.frame.size.height);
    [UIView commitAnimations];
}

- (IBAction)info:(id)sender
{
    [UIView beginAnimations:nil context:nil];

    detailScreen.frame = CGRectMake(0.0f, 0.0f, detailScreen.frame.size.width, detailScreen.frame.size.height);
    
    [UIView commitAnimations];
}

@end
