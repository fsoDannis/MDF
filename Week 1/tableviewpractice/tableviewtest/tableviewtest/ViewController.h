//
//  ViewController.h
//  tableviewtest
//
//  Created by Annis Dan on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate>  
{
    IBOutlet UITableView *tableview;
    NSArray *stringArray;
}

@end
