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
    
    detailScreen.frame = CGRectMake(640.0f, 0.0f, detailScreen.frame.size.width, detailScreen.frame.size.height);
    infoScreen.frame = CGRectMake(0.0f, -480.0f, infoScreen.frame.size.width, infoScreen.frame.size.height);
    
    myArray = [[NSMutableArray alloc] initWithObjects:
                 @"Dan Annis",
                 @"Emily Annis",
                 @"Alex Annis",
                 @"Makenzie Annis",
                 @"Chris Annis",
                 @"Sarah Annis",
                 @"Natalie Annis",
                 @"Kate Annis",
                 @"Chad Cunningham",
                 @"Angela Frisch",
                 @"Bobby Frisch",
                 @"Isaac Frisch",
                 @"Saif Iqbal",
                 @"Anthony Annis",
                 @"Andrew Annis",
                 @"Stephanie Mascari",
                 @"Lynn Annis",
                 @"Ken Annis",
                 @"Tina Mascari",
                 @"Jeff Mascari",
                 nil];
    smallArray = [[NSMutableArray alloc] initWithObjects:
                @"Batavia, OH",
                @"Batavia, OH",
                @"Batavia, OH",
                @"Batavia, OH",
                @"Cincinnati, OH",
                @"Cincinnati, OH",
                @"Cincinnati, OH",
                @"Cincinnati, OH",
                @"Batavia, OH",
                @"Eastgate, OH",
                @"Eastgate, OH",
                @"Eastgate, OH",
                @"Cincinnati, OH",
                @"Cincinnati, OH",
                @"Cincinnati, OH",
                @"Batavia, OH",
                @"Cincinnati, OH",
                @"Cincinnati, OH",
                @"Batavia, OH",
                @"Batavia, OH",
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

//Allows for editing based on if the button is on/off
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

//table view Delete function

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"Deleted row - %@", [myArray objectAtIndex:indexPath.row]);
        [myArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

//Custom Cell Creation

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if([view isKindOfClass:[CustomTableCell class]])
            {
                cell = (CustomTableCell*)view;
                cell.textLabel.text=(NSString*)[myArray objectAtIndex:indexPath.row];
                cell.smallLabel.text=(NSString*)[smallArray objectAtIndex:indexPath.row];
            }
        }
    }
    
    return cell;
}


//Array for the objects - Loads the information to the cell based on the array

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    //NSLog(@"Index Row = %d Index name= %@",indexPath.row, [myArray objectAtIndex:indexPath.row]);
    
    NSString *imageLink = @".jpg";
    NSString *imageTag =  [NSString stringWithFormat:@"%@%@",[myArray objectAtIndex:indexPath.row],imageLink];
    detailName.text = [myArray objectAtIndex:indexPath.row];
    smallName.text = [smallArray objectAtIndex:indexPath.row];
    detailImage.image = [UIImage imageNamed:imageTag];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    detailScreen.frame = CGRectMake(0.0f, 0.0f, detailScreen.frame.size.width, detailScreen.frame.size.height);
    
    [UIView commitAnimations];

}

//This button closes the detail/info views

- (IBAction)Done:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];

    detailScreen.frame = CGRectMake(640.0f, 0.0f, detailScreen.frame.size.width, detailScreen.frame.size.height);
    infoScreen.frame = CGRectMake(0.0f, -480.0f, infoScreen.frame.size.width, infoScreen.frame.size.height);
    [UIView commitAnimations];
}

//info view
- (IBAction)info:(id)sender
{
    [UIView beginAnimations:nil context:nil];

    infoScreen.frame = CGRectMake(0.0f, 0.0f, infoScreen.frame.size.width, infoScreen.frame.size.height);
    
    [UIView commitAnimations];
}

@end
