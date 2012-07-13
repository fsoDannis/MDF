
//  MDFWeek2
//
//  Created by Annis Dan on 7/10/12.

//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import"infoScreenController.h"
#import "detailViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Race Days", @"Race Days");
        self.tabBarItem.image = [UIImage imageNamed:@"track"];
    }
    return self;
}

- (void)viewDidLoad
{
    detailScreen.frame = CGRectMake(640.0f, 0.0f, detailScreen.frame.size.width, detailScreen.frame.size.height);
    
    //My object Arrays
    myArray = [[NSMutableArray alloc] init];
               [myArray addObject:@"Monday"];
               [myArray addObject: @"Wednesday"];
               [myArray addObject:@"Friday"];
    [self setTitle:@"RaceDays!"];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
} 

//Return the Array of Objects
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [myArray count];
}

//setting up my CELLS
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];   
    }
    
    cell.textLabel.text = [myArray objectAtIndex:indexPath.row];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator ];
    
    return cell;
}

//Makes the Table Clickable - was trying to push my detail screen. No GO
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    detailScreen.frame = CGRectMake(0.0f, 0.0f, detailScreen.frame.size.width, detailScreen.frame.size.height);
    
    [UIView commitAnimations];
    
    
    //Couldn't get my second set of arrays to work so I went with the "Cheap Method" of loading details
    
//    detailViewController *details=[[detailViewController alloc] initWithNibName:@"detailViewController" bundle:nil];
//    
//    
//    
//    
//    if([[myArray objectAtIndex:indexPath.row] isEqual:@"Monday"]){
//        details.RaceInt=0;
//        [details setTitle:[myArray objectAtIndex:indexPath.row]];
//    }
//    if([[myArray objectAtIndex:indexPath.row] isEqual:@"Wednesday"]){
//        details.RaceInt=1;
//        [details setTitle:[myArray objectAtIndex:indexPath.row]];
//    }
//    if([[myArray objectAtIndex:indexPath.row] isEqual:@"Friday"]){
//        details.RaceInt=2;
//        [details setTitle:[myArray objectAtIndex:indexPath.row]];
//    }
//    
//    [self.navigationController pushViewController:details animated:YES];
   
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (IBAction)Done:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    
    detailScreen.frame = CGRectMake(640.0f, 0.0f, detailScreen.frame.size.width, detailScreen.frame.size.height);
    
    [UIView commitAnimations];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
