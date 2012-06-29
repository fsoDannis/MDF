//
//  ViewController.h
//  Project1
//
//  Created by Annis Dan on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate> 
{
    IBOutlet UITableView *tableView;
    NSMutableArray *myArray;
    
}
- (IBAction)Edit:(id)sender;




@end
