// MDF Project 1 _ Week 1
//  Created by Dan Annis on 6/28/12.
//  Copyright (c) 2012. All rights reserved.

#import <UIKit/UIKit.h>

@interface DetailView : UIViewController
{
    IBOutlet UILabel *name;
    IBOutlet UILabel *age;
    IBOutlet UIImageView *photo;
}

- (IBAction)done:(id)sender;

@end
