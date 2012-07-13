// MDF Project 1 _ Week 1
//  Created by Dan Annis on 6/28/12.
//  Copyright (c) 2012. All rights reserved.

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell
{
    IBOutlet UILabel *textLabel;    
        IBOutlet UILabel *smallLabel; 

}
@property (strong, nonatomic)IBOutlet UILabel *textLabel;
@property (strong, nonatomic)IBOutlet UILabel *smallLabel;
@end
