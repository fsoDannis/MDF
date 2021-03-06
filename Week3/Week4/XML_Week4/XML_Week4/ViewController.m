//
//  ViewController.m
//  XML_Week4
//
//  Created by Annis Dan on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "XMLParser.h"
#import "Objects.h"
#import "XMLDetailViewController.h"
#import "XMLWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize ObjectTableView;



XMLParser *xmlParser;
CGRect dateFrame;
UILabel *dateLabel;
CGRect contentFrame;
UILabel *contentLabel;


NSArray *myArray;

- (void)viewDidLoad
{
//    myArray = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
        xmlParser = [[XMLParser alloc] loadXMLByURL:@"http://dinkydetails.com/mdf/m.xml"];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    return [[xmlParser myData] count]; 
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    
   static NSString *CellIdentifier = @"Cell";
	Objects *currentObjects = [[xmlParser myData] objectAtIndex:indexPath.row];
   
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) 
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    //load the cell Name
    cell.textLabel.text=[currentObjects content];
    
    //Call my images
    id path = [currentObjects img];
    NSURL *url = [NSURL URLWithString:path];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *imgParsed = [[UIImage alloc] initWithData:data];
    //Load my image in the cell
    cell.imageView.image= imgParsed;
    
    //add the arrows
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}



// MANUALLY CREATING MY LIST DATA - COMMENTED OUT TO TEST
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
//{
//    
//    static NSString *CellIdentifier = @"Cell";
//	Objects *currentObjects = [[xmlParser myData] objectAtIndex:indexPath.row];
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if (cell == nil) 
//    {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
//        
//        CGRect contentFrame = CGRectMake(45, 2, 265, 30);
//        UILabel *contentLabel = [[UILabel alloc] initWithFrame:contentFrame];
//        contentLabel.tag = 0011;
//        contentLabel.numberOfLines = 2;
//        contentLabel.font = [UIFont boldSystemFontOfSize:12];
//        contentLabel.textColor = [UIColor blueColor];
//        [cell.contentView addSubview:contentLabel];
//        
//        CGRect dateFrame = CGRectMake(60, 26, 265, 10);
//        UILabel *dateLabel = [[UILabel alloc] initWithFrame:dateFrame];
//        dateLabel.tag = 0012;
//        dateLabel.font = [UIFont systemFontOfSize:10];
//        dateLabel.textColor = [UIColor blackColor];
//        [cell.contentView addSubview:dateLabel];
//        
//        
//    }
//	
//	UILabel *contentLabel = (UILabel *)[cell.contentView viewWithTag:0011];
//    contentLabel.text = [currentObjects content];
//    NSString *full =  [NSString stringWithFormat:@"%@, %@",[currentObjects city],[currentObjects dateCreated]];
//	UILabel *dateLabel = (UILabel *)[cell.contentView viewWithTag:0012];
//    dateLabel.text = full;
//    
//    id path = [currentObjects img];
//    NSURL *url = [NSURL URLWithString:path];
//    NSData *data = [NSData dataWithContentsOfURL:url];
//    UIImage *imgParsed = [[UIImage alloc] initWithData:data];
//    
//    CGRect imageFrame = CGRectMake(2, 8, 40, 40);
//    self.customImage = [[UIImageView alloc] initWithFrame:imageFrame];
//    self.customImage.image = imgParsed;
//    [cell.contentView addSubview:self.customImage];
////    
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    
//    
//    //  NSLog(@"The URL im asking for is %@",[currentTweet img]);
//    return cell;
//}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//	return 55;
//}

// Was moving to a new detail view until I hard coded the info above where i get the data
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showXMLDetailView"]) {
        NSIndexPath *indexPath = [self.ObjectTableView indexPathForSelectedRow];
        XMLDetailViewController *destViewController = segue.destinationViewController;
        Objects *currentObjects = [[xmlParser myData] objectAtIndex:indexPath.row];
        //Setting the title of the Detail View to the object seleced in my array
        destViewController.title = [currentObjects content];       
        //setting Label to say hi to my Detail View!
        destViewController.XMLName = @"Hello....DetailView!!!";
        
        //Setting the Label Text to the name of the array that was selected 
        destViewController.InfoName = [currentObjects content];
        destViewController.CityName = [currentObjects city];
        destViewController.StateName = [currentObjects dateCreated];
        destViewController.DetailName = [currentObjects img];
        
    }
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{


}


- (void)viewDidUnload
{

   // [self setObjectsTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
