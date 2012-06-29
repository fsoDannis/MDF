// MDF Project 1 _ Week 1
//  Created by Dan Annis on 6/28/12.
//  Copyright (c) 2012. All rights reserved.

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate> 
{
    IBOutlet UITableView *tableView;
    NSMutableArray *myArray;
    IBOutlet UIView *loadScreen;
    IBOutlet UIView *detailScreen;
    IBOutlet UILabel *detailName;
    IBOutlet UILabel *detailAge;
    IBOutlet UIImageView *detailImage;
    
}
- (IBAction)Edit:(id)sender;
- (IBAction)Done:(id)sender;
- (IBAction)info:(id)sender;


@end
