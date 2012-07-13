//
//  ThirdViewController.h
//  MDFWeek2
//
//  Created by Annis Dan on 7/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController
{
    IBOutlet UITableView *tableView;
    NSMutableArray *myArray;
    IBOutlet UIView *detailScreen;
  
   
    
}

- (IBAction)Done:(id)sender;
@end
