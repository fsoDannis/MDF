//
//  DetailView.h
//  Project1
//
//  Created by Annis Dan on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailView : UIViewController
{
    IBOutlet UILabel *name;
    IBOutlet UILabel *age;
    IBOutlet UIImageView *photo;
}

- (IBAction)done:(id)sender;

@end
