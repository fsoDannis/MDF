
//  MDFWeek2
//
//  Created by Annis Dan on 7/10/12.

//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import"infoScreenController.h"
#import "detailViewController.h"

@interface detailViewController ()

@end

@implementation detailViewController

@ synthesize RaceInt; 

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableview
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(RaceInt == 0)
        return[Monday count];
    if(RaceInt == 1)
        return[Wednesday count];
    if(RaceInt == 2)
        return[Friday count]; 
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];   
    }
    
    if (RaceInt == 0)
        cell.textLabel.text = [Monday objectAtIndex:indexPath.row];
    if (RaceInt == 1)
        cell.textLabel.text = [Wednesday  objectAtIndex:indexPath.row];
    if (RaceInt == 2)
        cell.textLabel.text = [Friday objectAtIndex:indexPath.row];
    
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator ];
    return cell;
}

- (void)viewDidLoad
{
    
    
    Monday = [[NSMutableArray alloc] initWithObjects:@"Practice", @"Huddle", @"Race", nil];
    Wednesday  = [[NSMutableArray alloc] initWithObjects:@"Practice", @"Huddle", @"Race", nil];
    Friday = [[NSMutableArray alloc] initWithObjects:@"Practice", @"Huddle", @"Race", nil];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
