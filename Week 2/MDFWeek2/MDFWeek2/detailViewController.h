//
//  detailViewController.h
//  MDFWeek2
//
//  Created by Annis Dan on 7/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface detailViewController : UIViewController
{
    //Setting up my arrays for my detailed information
    NSMutableArray *Monday;
    NSMutableArray *Wednesday;
    NSMutableArray *Friday;
    int RaceInt;
    IBOutlet UITableView *tableView;
}
@property int RaceInt;

@end
