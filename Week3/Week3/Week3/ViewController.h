//
//  ViewController.h
//  Week3
//
//  Created by Annis Dan on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>

@interface ViewController : UIViewController  <UITableViewDelegate, UITableViewDataSource>
{
    
    NSMutableArray *tableData;

}
@property (nonatomic, strong) IBOutlet UITableView *tableView;

- (IBAction)Edit:(id)sender;

@end
    