//
//  ViewController.h
//  XML_Week4
//
//  Created by Annis Dan on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMLDetailViewController.h"
#import "XMLParser.h"
#import "Objects.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, retain) UIImageView *customImage;
@property (nonatomic, strong) IBOutlet UITableView *ObjectTableView;

@end
